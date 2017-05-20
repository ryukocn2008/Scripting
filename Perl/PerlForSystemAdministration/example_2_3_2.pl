#!/usr/bin/perl -s
# note the use of -s for switch processing. Under NT/2000, you will need to
# call this script explicitly with -s (i.e., perl -s script) if you do not
# have perl file associations in place. 
# -s is also considered 'retro', many programmers prefer to load
# a separate module (from the Getopt:: family) for switch parsing.


# module for finding the current working directory
use Cwd; 

# This subroutine takes the name of a directory and recursively scans 
# down the filesystem from that point looking for files named "core"
sub ScanDirectory{
    my ($workdir) = shift; 

    my ($startdir) = &cwd; # keep track of where we began

    chdir($workdir) or die "Unable to enter dir $workdir:$!\n";
    opendir(DIR, ".") or die "Unable to open $workdir:$!\n";
    my @names = readdir(DIR) or die "Unable to read $workdir:$!\n";
    closedir(DIR);

    foreach my $name (@names){
        next if ($name eq "."); 
        next if ($name eq "..");

        if (-d $name){                  # is this a directory?
            &ScanDirectory($name);
            next;
        }
        if ($name eq "core") {          # is this a file named "core"?
            # if -r specified on command line, actually delete the file
            if (defined $r){
	             unlink($name) or die "Unable to delete $name:$!\n";
            }
            else {
                print "found one in $workdir!\n"; 
            }
        } else {
			print "$name\n";
		}
        chdir($startdir) or 
           die "Unable to change to dir $startdir:$!\n";
    }
}

&ScanDirectory(".");

