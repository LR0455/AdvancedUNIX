int r(int n) {
    if (n <= 0) return 0;
    if (n == 1) return 1;
    return 2*r(n-1) + 3*r(n-2);
}
int main() {
    int n;
    scanf("%d", &n);
    printf("%x\n", r(n));
}
