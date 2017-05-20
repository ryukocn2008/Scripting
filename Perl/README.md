* Tools needed to be installed before run cpan for the first time  
[root@COS70X64Perl Perl]# yum install bzip2 unzip gpg patch wget gcc make  
  
* Modules installed when installing cpan.  
[root@COS70X64Perl Perl]# yum install cpan  
Dependencies Resolved  
  
======================================================================================================================================================================================  
 Package                                              Arch                                Version                                          Repository                            Size  
======================================================================================================================================================================================  
Installing:  
 perl-CPAN                                            noarch                              1.9800-291.el7                                   base                                 292 k  
Installing for dependencies:  
 gdbm-devel                                           x86_64                              1.10-8.el7                                       base                                  47 k  
 glibc-devel                                          x86_64                              2.17-157.el7_3.1                                 updates                              1.1 M  
 glibc-headers                                        x86_64                              2.17-157.el7_3.1                                 updates                              668 k  
 kernel-headers                                       x86_64                              3.10.0-514.2.2.el7                               updates                              4.8 M  
 libdb-devel                                          x86_64                              5.3.21-19.el7                                    base                                  38 k  
 perl-Data-Dumper                                     x86_64                              2.145-3.el7                                      base                                  47 k  
 perl-Digest                                          noarch                              1.17-245.el7                                     base                                  23 k  
 perl-Digest-SHA                                      x86_64                              1:5.85-3.el7                                     base                                  58 k  
 perl-ExtUtils-Install                                noarch                              1.58-291.el7                                     base                                  74 k  
 perl-ExtUtils-MakeMaker                              noarch                              6.68-3.el7                                       base                                 275 k  
 perl-ExtUtils-Manifest                               noarch                              1.61-244.el7                                     base                                  31 k  
 perl-ExtUtils-ParseXS                                noarch                              1:3.18-2.el7                                     base                                  77 k  
 perl-Test-Harness                                    noarch                              3.28-3.el7                                       base                                 302 k  
 perl-devel                                           x86_64                              4:5.16.3-291.el7                                 base                                 453 k  
 perl-local-lib                                       noarch                              1.008010-3.el7                                   base                                  64 k  
 pyparsing                                            noarch                              1.5.6-9.el7                                      base                                  94 k  
 systemtap-sdt-devel                                  x86_64                              3.0-7.el7                                        base                                  69 k  
Updating for dependencies:  
 glibc                                                x86_64                              2.17-157.el7_3.1                                 updates                              3.6 M  
 glibc-common                                         x86_64                              2.17-157.el7_3.1                                 updates                               11 M  
 libdb                                                x86_64                              5.3.21-19.el7                                    base                                 718 k  
 libdb-utils                                          x86_64                              5.3.21-19.el7                                    base                                 102 k  
  
Transaction Summary  
======================================================================================================================================================================================  
Install  1 Package  (+17 Dependent packages)  
Upgrade             (  4 Dependent packages)  
  
* Install other official modules before running cpan  
[root@COS70X64Perl Perl]# yum install perl-YAML perl-Time-HiRes  
  
* Install other Perl module via cpan after running cpan  
CPAN::SQLite makepatch Bundle::CPAN  
  
* Upgrade cpan  
cpan[1]> install CPAN  
cpan[2]> reload CPAN  
  
  
  
* Below will be added to $HOME/.bashrc. If reconfigure is needed to cpan, run command below.  
export PERL_LOCAL_LIB_ROOT="$PERL_LOCAL_LIB_ROOT:/home/dev/perl5";  
export PERL_MB_OPT="--install_base /home/dev/perl5";  
export PERL_MM_OPT="INSTALL_BASE=/home/dev/perl5";  
export PERL5LIB="/home/dev/perl5/lib/perl5:$PERL5LIB";  
export PATH="/home/dev/perl5/bin:$PATH";  
  
cpan[1]> o conf init  

* Install multiple version of Perl from source code  
Source can be downloaded from http://www.cpan.org/src/  
./configure -des -Dprefix=$HOME/Perls/perl-5.24.0  
(optional) ./configure -des -Dprefix=$HOME/Perls/perl-5.24.0 -Dusethreads
make  
make test  
make install  



  
=======
=======
    
  
  
  
* Environment Variables read by perl  

- HOME  
  Used if chdir has no argument.  
  
- LOGDIR
  Used if chdir has no argument and HOME is not set.  
  
- PATH  
  Used in executing subprocesses and in finding the script if -S is used.  
  
- PATHEXT  
  On Win32 systems, if you want to avoid typing the extension every time you execute a Perl script, you can set the PATHEXT environment variable so that it includes Perl scripts. For example:  
> set PATHEXT=%PATHEXT%;.PLX  
  This setting lets you type:  
> myscript  
  without including the file extension. Take care when setting PATHEXT permanently - it also includes executable file types like .com, .exe, .bat , and .cmd . If you inadvertently lose those extensions, you'll have difficulty invoking applications and script files.  

- PERL5LIB  
  A colon-separated list of directories in which to look for Perl library files before looking in the standard library and the current directory. If PERL5LIB is not defined, PERLLIB is used. When running taint checks, neither variable is used. The script should instead say:  
  use lib "/my/directory";  

- PERL5OPT  
  Command-line options (switches). Switches in this variable are taken as if they were on every Perl command line. Only the - [ DIMUdmw ] switches are allowed. When running taint checks, this variable is ignored.  
  
- PERLLIB  
  A colon-separated list of directories in which to look for Perl library files before looking in the standard library and the current directory. If PERL5LIB is defined, PERLLIB is not used.  
  
- PERL5DB  
  The command used to load the debugger code. The default is:  
BEGIN { require 'perl5db.pl' }  
  
- PERL5SHELL  
  On Win32 systems, may be set to an alternative shell for Perl to use internally to execute "backtick" commands or the system function.  
  
- PERL_DEBUG_MSTATS  
  Relevant only if your Perl executable was built with -DDEBUGGING_MSTATS. If set, causes memory statistics to be dumped after execution. If set to an integer greater than one, it also causes memory statistics to be dumped after compilation.  
  
- PERL_DESTRUCT_LEVEL  
  Relevant only if your Perl executable was built with -DDEBUGGING. Controls the behavior of global destruction of objects and other references.  
  
Perl also has environment variables that control how Perl handles data specific to particular natural languages. See the perllocale manpage.  

=======



