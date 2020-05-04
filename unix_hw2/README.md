# Homework #2
Advanced Programming in the UNIX Environment
Due: May 11, 2020
# Play in a Sandbox!?
In this homework, we are going to practice library injection and API hijacking. Please implement a sandbox that confines file relevant operations to a user provided directory. You have to implement your sandbox as a shared library (1) (e.g., sandbox.so) and then inject the shared library into a process using using your customized command launcher (2) (e.g., sandbox). If an operation attempts to escape from the sandbox, e.g., open a file or a directory outside the sandbox, you have to reject the request by returning an error code to the function caller. In addition, please also output an error message to the user's terminal. You should output error messages correctly even if the command line has redirected outputs/errors to a file. Please check the functions listed in the section "Requirements" below.

You have to compile your source codes and generate 1) the shared object and 2) the launcher. You don't have to implement any test program by yourself. Instead, you have to work with those binaries already installed in the system.

# Requirements
The list of monitored library calls is shown below. It covers several functions we have introduced in the class.

chdir chmod chown creat fopen link mkdir open openat opendir readlink remove rename rmdir stat symlink unlink
In addition to the aforementioned library calls, your sandbox ALWAYS has to reject the use of the following functions:

execl execle execlp execv execve execvp system
# Output Messages
If an invalid access is detected, your program has to output an error message to indicate the error. If an access to an invalid path is detected, please show the target pathname and the corresponding operation. If the use of system or exec* is rejected, please also show the function name and the command line (for system) or the executable name (for exec*).

# Grading Policy
The grading policy for this homework is listed below:

[10%] Use Makefile to manage the building process of your program. We will not grade your program if we cannot use make command to build your program.
[30%] A sandboxed executable can work as usual. Your program cannot change the behavior of a sandboxed executable if the accesses are in the allowed base directory and its subdirectories.
[30%] Implement file/directory-relevant functions listed in the requirements.
[20%] Implement system and exec* functions listed in the requirements.
[10%] Display error messages.
# Homework Submission
Please pack your files into a single tar.gz archive and submit your homework via the system. Please also provide a Makefile (used for compiling and linking your codes) and a README file (indicating what functions will be monitored) in your archive.

# Hints
Some hints that may simplify your work:

We will test your program on Ubuntu 18.04. For the best compatibility, you may develop your program on Ubuntu 18.04.
You may need to define macros to simplify your implementation.
You may consider working with # and ## operators in macros.
For variable-length function parameters, consider working with stdarg.h.
You may consider working with __attribute__((constructor)). If you don't know what is that, please google for it!
The implementation for some library functions may be different from its well-known prototypes. For example, the actual implementation for stat in GNU C library is __xstat. Therefore, you may be not able to find symbol stat in the binary. In case that you are not sure about the real symbols used in C library, try to work with readelf or nm to get the symbol names.
Sample macro implementation is available here.
You may use ltrace command to check what library functions are called by a program.
