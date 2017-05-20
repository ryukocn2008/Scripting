#!/usr/bin/env perl
##!/usr/bin/perl
# Template with Data::Dumper

use warnings;
#use diagnostics;
use Data::Dumper;
use PadWalker qw(peek_my);

$Data::Dumper::Sortkeys = 1;

# 1. $ARG | $_
# 1.1 while (<>) {} | while (defined($_ = <>)) {}
# 1.2 /^Subject:/ | $_ =~ /^Subject:/
# 1.3 tr/a-z/A-Z/ | $_ =~ tr/a-z/A-Z/
# 1.4 chomp | chomp($_)


# 2. @ARG | @_



# 3. @LIST_SEPARATOR | $"



# 4. $PROCESS_ID | $PID | $$


# 5. $PROGRAM_NAME | $0


# 6. $REAL_GROUP_ID | $GID | $(


# 7. $EFFECITVE_GROUP_ID | $EGID | $)


# 8. $REAL_USER_ID | $UID | $<


# 9. $EFFECTIVE_USER_ID | $EUID | $>


#10. $SUBSCRIPT_SEPARATOR | $SUBSEP | $;


#11. $a | $b


#12. %ENV


#13. $OLD_PERL_VERSION | $]


#14. $SYSTEM_FD_MAX | $^F


#15. @F


#16. @INC


#17. %INC


#18. $INPLACE_EDIT | $^I


#19. $^M


#20. $OSNAME | $^O


#21. %SIG


#22. $BASETIME | $^T


#23. $PERL_VERSION | $^V


#24. ${^WIN32_SLOPPY_STAT}


#25. $EXECTABLE_NAME | $^X














my $all_ref = peek_my(0);
print "\n\n====================\n";
print "ALL VARIABLES IN MY:\n";
print Dumper($all_ref);
