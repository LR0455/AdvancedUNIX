#include <iostream>
#include <fstream>
#include <string>
#include <cstring>
#include <sstream>
#include <vector>
#include <arpa/inet.h>
#include <netinet/in.h>
#include <unistd.h>
#include <dirent.h>
#include <map>
#include <getopt.h>
//#include <bits/regex.h>
#include <regex>

using namespace std;
# define IPV4 4
# define IPV6 6

struct net_info {
    string proto;
    string src_ip, dst_ip;
    string src_port, dst_port;
    string pid;
    string prg_name;
};
struct prc_info {
    string pid, prg_name;
    map <string, bool> inode;
};
// **global variable**
vector<net_info> net_info_arr;
vector<prc_info> prc_info_arr;
vector<string> filter;
// **...............**

int HexToDec(char c) {
    return isalpha(c) ? c - 'A' + 10 : c - '0';
}

void ipv4(const string &tmp1,const string &tmp2, string &ip, string &port) {
    // **ip**
    unsigned long tmp1_num = 0;
    for (int i = 0 ; i < tmp1.size() ; i ++) // hex to dec
        tmp1_num = tmp1_num * 16 + HexToDec(tmp1[i]);

    in_addr *in = new in_addr();
    in->s_addr = tmp1_num;
    char buf[200];
    inet_ntop(AF_INET, in, buf, sizeof(buf)); // dec to ip
    ip = buf;

    // **port**
    int pt = (HexToDec(tmp2[0]) * 16 + HexToDec(tmp2[1])) * 256 + HexToDec(tmp2[2]) * 16 + HexToDec(tmp2[3]);
    if (pt == 0)
        port = "*";
    else {
        while(pt) {
            port = char((pt % 10) + '0') + port;
            pt /= 10;
        }
    }
}

void ipv6(const string &tmp1,const string &tmp2, string &ip, string &port) {
    // **ip**
    int i, j, k;
    in6_addr *in6 = new in6_addr();

    for (i = 0 ; i < tmp1.size() ; i += 2, j ++)
        in6->__in6_u.__u6_addr8[j] = HexToDec(tmp1[i]) * 16 + HexToDec(tmp1[i+1]);
    for (i = 0 ; i < 4 ; i ++) {
        int bg = i * 4;
        swap(in6->__in6_u.__u6_addr8[bg + i], in6->__in6_u.__u6_addr8[bg + i + 3]);
        swap(in6->__in6_u.__u6_addr8[bg + i + 1], in6->__in6_u.__u6_addr8[bg + i + 2]);
    }

    char buf[200];
    inet_ntop(AF_INET6, in6, buf, sizeof(buf));
    ip = buf;

    // **port**
    int pt = (HexToDec(tmp2[0]) * 16 + HexToDec(tmp2[1])) * 256 + HexToDec(tmp2[2]) * 16 + HexToDec(tmp2[3]);
    if (pt == 0)
        port = "*";
    else {
        while(pt) {
            port = char((pt % 10) + '0') + port;
            pt /= 10;
        }
    }
}

void openNetFile(const string path, const string proto, int flag) {
    int i, j, k;
    ifstream net_file(path);
    if (net_file.is_open())
    {
        string line, arg, arg_arr[200], tmp;
        getline(net_file, line); // first line is title

        while(getline(net_file, line)) { // read file
            for (i = 0 ; i < line.size() ; i ++) // replace ':' to ' '
                if (line[i] == ':')
                    line[i] = ' ';

            istringstream sin(line);
            for (i = 0, k = 0 ; sin >> arg ; i ++, k ++) // split by whitespace
                arg_arr[i] = arg;

            //if (arg_arr[5] != "01") continue;

            net_info ntif;

            ntif.proto = proto;
            if (flag == IPV4) {
                ipv4(arg_arr[1], arg_arr[2], ntif.src_ip, ntif.src_port);
                ipv4(arg_arr[3], arg_arr[4], ntif.dst_ip, ntif.dst_port);
            }
            else {
                ipv6(arg_arr[1], arg_arr[2], ntif.src_ip, ntif.src_port);
                ipv6(arg_arr[3], arg_arr[4], ntif.dst_ip, ntif.dst_port);
            }

            for (i = 0 ; i < prc_info_arr.size() ; i ++) // search inode in each pid
                if (prc_info_arr[i].inode[arg_arr[13]] == true) {
                    ntif.pid = prc_info_arr[i].pid;
                    ntif.prg_name = prc_info_arr[i].prg_name;
                    break;
                }

            smatch sm;
            bool show = true;
            for (i = 0 ; i < filter.size() ; i ++) {
                string str_show = ntif.proto + " " + ntif.src_ip + ":" + ntif.src_port + " " + ntif.dst_ip + ":" + ntif.dst_port + " " + ntif.pid + "/" + ntif.prg_name;
                if ( !regex_search (str_show, sm, regex(filter[i]))) {
                    show = false;
                    break;
                }
            }
            if (!show) continue;

            printf("%-7s", ntif.proto.c_str());
            char buf[200];
            sprintf(buf, "%s:%s", ntif.src_ip.c_str(), ntif.src_port.c_str());
            printf("%-24s", buf);
            sprintf(buf, "%s:%s", ntif.dst_ip.c_str(), ntif.dst_port.c_str());
            printf("%-23s", buf);
            printf("%s/%s\n", ntif.pid.c_str(), ntif.prg_name.c_str());

        }

    } else {
        cout << "open file failed.\n";
        cout << strerror(errno) << endl;
    }
}

int main(int argc, char **argv)
{
    // **store all pid's message**
    DIR *proc_dir = opendir("/proc");
    dirent *proc_ptr;
    while((proc_ptr = readdir(proc_dir)) != NULL) {
        if (!isalpha(proc_ptr->d_name[0]) && proc_ptr->d_name[0] != '.') { // pid
            //cout << proc_ptr->d_name << endl;
            prc_info pif;
            pif.pid += proc_ptr->d_name;
            //cout << pif.pid << endl;

            string stat_path = "/proc/" + pif.pid + "/stat"; // find program name in stat
            ifstream stat_file(stat_path);
            string line;
            getline(stat_file, line);

            bool start = false;
            for (int i = 1; line[i] != ')' && i < line.size(); i++) { // store program name
                if (line[i - 1] == '(')
                    start = true;
                if (start)
                    pif.prg_name += line[i];
            }
            //cout << pif.prg_name << endl;

            string fd_dir_path = "/proc/" + pif.pid + "/fd";

            //cout << fd_dir_path << endl;

            DIR *fd_dir = opendir(fd_dir_path.c_str());
            dirent *fd_ptr;
            while((fd_ptr = readdir(fd_dir)) != NULL) {
                if (fd_ptr->d_name[0] != '.') {
                    string fd_path = fd_dir_path + "/" + fd_ptr->d_name;

                    char buf[200] = {0};
                    int buf_len = readlink(fd_path.c_str(), buf, sizeof(buf));
                    if (buf[0] == 's') { // socket:[xxx]
                        string str_inode;
                        start = false;
                        for (int i = 1; buf[i] != ']' && i < strlen(buf); i++) { // store inode
                            if (buf[i - 1] == '[')
                                start = true;
                            if (start)
                                str_inode += buf[i];
                        }
                        pif.inode[str_inode] = true;
                    }

                    prc_info_arr.push_back(pif);
                }
            }

//            for (map<string,bool>::iterator iter=pif.inode.begin() ; iter != pif.inode.end() ; iter ++)
//                cout << iter->first << ' ';
//            cout << endl;
        }
    }
    cout << "Proto  Local Address           Foreign Address        PID/Program name and arguments" << endl;

    // --tcp -> -t, --udp -> -u
    struct option opts[] = {
            {"tcp", 0, NULL, 't'},
            {"udp", 0, NULL, 'u'},
    };
    bool tcp = false, udp = false;
    const char *optstring = "tu"; // -t or -u
    char c;
    while ((c = getopt_long(argc, argv, optstring, opts, NULL)) != -1) {
        switch(c) {
            case 't':
                tcp = true;
                break;
            case 'u':
                udp = true;
                break;
        }
    }
    for (int i = optind ; i < argc ; i ++) {
        string arg = argv[i];
        filter.push_back(arg);
    }

    if (tcp || !udp) {
        openNetFile("/proc/net/tcp", "tcp", IPV4);
        openNetFile("/proc/net/tcp6", "tcp6", IPV6);
    }
    if (udp || !tcp) {
        openNetFile("/proc/net/udp", "udp", IPV4);
        openNetFile("/proc/net/udp6", "udp6", IPV6);
    }


}