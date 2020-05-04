
<!DOCTYPE html>
<html lang="en">
<!-- header -->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<!--<link rel="icon" href="favicon.ico"/>-->
<!-- bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous"/>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="/~chuang/lib/theme/ie10-viewport-bug-workaround.css" rel="stylesheet"/>
<!-- font awesome -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<!-- custom bootstrap theme -->
<link href="/~chuang/lib/theme/theme.css" rel="stylesheet">
<link href="/~chuang/lib/theme/callout.css" rel="stylesheet">
<link href="/~chuang/lib/custom.css" rel="stylesheet">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<!-- body -->
<body role="document">
<!-- main body -->
<div class="container theme-showcase" role="main">

<h3>Homework #2</h3>
<h4><small>Advanced Programming in the UNIX Environment</small></h4>

<h4>Due: May 11, 2020</h4>

<h3>Play in a Sandbox!?</h3>

<p>In this homework, we are going to practice library injection and API hijacking. Please implement a sandbox that confines file relevant operations to a user provided directory. You have to implement your sandbox as a <u>shared library (1)</u> (e.g., sandbox.so) and then inject the shared library into a process using using your customized <u>command launcher (2)</u> (e.g., sandbox). If an operation attempts to escape from the sandbox, e.g., open a file or a directory outside the sandbox, you have to reject the request by returning an error code to the function caller. In addition, please also output an error message to the user's <u>terminal</u>. You should output error messages correctly even if the command line has redirected outputs/errors to a file. Please check the functions listed in the section "Requirements" below.</p>

<p>You have to compile your source codes and generate 1) the shared object and 2) the launcher. You don't have to implement any test program by yourself. Instead, you have to work with those binaries already installed in the system.</p>

<h3>Requirements</h3>

<p>The list of monitored library calls is shown below. It covers several functions we have introduced in the class.
<div class="term">chdir</div>
<div class="term">chmod</div>
<div class="term">chown</div>
<div class="term">creat</div>
<div class="term">fopen</div>
<div class="term">link</div>
<div class="term">mkdir</div>
<div class="term">open</div>
<div class="term">openat</div>
<div class="term">opendir</div>
<div class="term">readlink</div>
<div class="term">remove</div>
<div class="term">rename</div>
<div class="term">rmdir</div>
<div class="term">stat</div>
<div class="term">symlink</div>
<div class="term">unlink</div>
</p>

<p>In addition to the aforementioned library calls, your sandbox ALWAYS has to reject the use of the following functions:
<div class="term">execl</div>
<div class="term">execle</div>
<div class="term">execlp</div>
<div class="term">execv</div>
<div class="term">execve</div>
<div class="term">execvp</div>
<div class="term">system</div>
</p>

<h3>Output Messages</h3>

<p>If an invalid access is detected, your program has to output an error message to indicate the error. If an access to an invalid path is detected, please show the target pathname and the corresponding operation. If the use of <code style="display: inline">system</code> or <code style="display: inline">exec*</code> is rejected, please also show the function name and the command line (for system) or the executable name (for exec*).
</p>

<h3>Grading Policy</h3>

<p>The grading policy for this homework is listed below:
<ul>
<li>[10%] Use Makefile to manage the building process of your program. <span style="color:red">We will not grade your program if we cannot use <b>make</b> command to build your program.</span></li>
<li>[30%] A sandboxed executable can work as usual. Your program cannot change the behavior of a sandboxed executable if the accesses are in the allowed base directory and its subdirectories.</li>
<li>[30%] Implement file/directory-relevant functions listed in the requirements.</li>
<li>[20%] Implement <code style="display: inline">system</code> and <code style="display: inline">exec*</code> functions listed in the requirements.</li>
<li>[10%] Display error messages.</li>
</ul>
</p>

<h3>Homework Submission</h3>

<p>Please pack your files into a single <span style="color: red">tar.gz</span> archive and submit your homework via the system. Please also provide a <span style="color: red">Makefile</span> (used for compiling and linking your codes) and a <span style="color: red">README</span> file (indicating what functions will be monitored) in your archive.</p>

<h3>Hints</h3>

<p>Some hints that may simplify your work:
<ol>
<li>We will test your program on Ubuntu 18.04. For the best compatibility, you may develop your program on Ubuntu 18.04.</li>
<li>You may need to define macros to simplify your implementation.</li>
<li>You may consider working with # and ## operators in macros.</li>
<li>For variable-length function parameters, consider working with <a href="http://man7.org/linux/man-pages/man0/stdarg.h.0p.html" target="_blank">stdarg.h</a>.</li>
<li>You may consider working with <span class="texttt">__attribute__((constructor))</span>. If you don't know what is that, please google for it!</li>
<li>The implementation for some library functions may be different from its well-known prototypes. For example, the actual implementation for <b>stat</b> in GNU C library is <b>__xstat</b>. Therefore, you may be not able to find symbol <b>stat</b> in the binary. In case that you are not sure about the <em>real</em> symbols used in C library, try to work with <b>readelf</b> or <b>nm</b> to get the symbol names.</li>
<li>Sample macro implementation is available <a href="macro.txt">here</a>.</li>
<li>You may use <code style="display: inline">ltrace</code> command to check what library functions are called by a program.</li>
</ol>
</p>

</footer>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-75749309-1', 'auto');
  ga('send', 'pageview');

</script>
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<!--<script src="lib/theme/docs.min.js"></script>-->
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="/~chuang/lib/theme/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
