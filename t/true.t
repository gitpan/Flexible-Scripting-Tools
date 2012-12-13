#!/usr/bin/env perl
use warnings;
use Test::More tests => 3;

BEGIN { use_ok( 'Test::Constants::True' ) };


#if ( $TRUE ) # if $TRUE has been set to a value that will evaluate as true then evaluate $TRUE as the truth, fur realz like.  
#{
    ok(print $TRUE."\n"); # and then print it, just to let us know that it worked.  
#}

    sub doublecheck
    {
	if ( $TRUE )
	{
	    print $TRUE."\n";
	}
	else
	{
	    die $!;
	}
    }
    ok(doublecheck());
