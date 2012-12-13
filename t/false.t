#!/usr/bin/env perl
use warnings;
use Test::More tests => 3;
BEGIN { use_ok( Flexible::Scripting::Tools ) };

#if ( $FALSE )
#{
#    print "You should not be seeing this message.  \$FALSE should eval to... will false, which should make the if statement default to the else statement.\n";
#}
#else
#{
    ok(print $FALSE."\n"); # if false has been properly set to a value that will always eval as false then print false plus a newline for cosmetic reasons.  
#}

    sub tryif
    {
	if ( $FALSE )
	{
	    donothing(); # does what it says, nothing.  Useful as a place holder in tests and other stuff. 
	    # similar to how you can use True or False in Bash to basically do nothing if a test comes out a certain way.  
	    # like this 

=bash example

if true; then
    echo "I said so, yo.  It\'s true";
else
    true; # do nothing
fi

=end of example
=cut 
    }
    else 
    {
	print "\$FALSE is->$FALSE\n"; # if false really does eval to false, do this.  
    }

    # and then end.  
}

ok(tryif()); # now run the tryif routine.  
