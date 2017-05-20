#!/usr/bin/perl -s
use Cwd; # module for finding the current working directory
$|=1;    # turn off I/O buffering

sub ScanDirectory {
    my ($workdir) = shift; 

    my($startdir) = &cwd; # keep track of where we began

    chdir($workdir) or die "Unable to enter dir $workdir:$!\n";

    opendir(DIR, ".") or die "Unable to open $workdir:$!\n";
    my @names = readdir(DIR);
    closedir(DIR);
 
    foreach my $name (@names){
        next if ($name eq "."); 
        next if ($name eq "..");
	
        if (-d $name){                     # is this a directory?
            &ScanDirectory($name);
            next;
        }
        unless (&CheckFile($name)){           
            print &cwd."/".$name."\n"; # print the bad filename
        }
    }
    chdir($startdir) or die "Unable to change to dir $startdir:$!\n";
}

sub CheckFile{
    my($name) = shift;
    
    print STDERR "Scanning ". &cwd."/".$name."\n";
    # attempt to read the directory entry for this file
    my @stat = stat($name);
    if (!$stat[4] && !$stat[5] && !$stat[6] && !$stat[7] && !$stat[8]){
        return 0;
    }
    # attempt to open this file
    unless (open(T,"$name")){
        return 0;
    }	
    # read the file one byte at a time
    for (my $i=0;$i< $stat[7];$i++){
        my $r=sysread(T,$i,1);
        if ($r !=1) {
            close(T);
            return 0;
        }
    }
    close(T);
    return 1;
}
 
&ScanDirectory(".");
