#!/usr/bin/env perl
=begin LICENSE
+--------------------------------------------------------------------------------------+
| BSD-3 OSI License                                                                    |
+--------------------------------------------------------------------------------------+
| Copyright (c) 2012, Alexej G. Magura                                                 |
| All rights reserved.                                                                 |
|                                                                                      |
| Redistribution and use in source and binary forms, with or without                   |
| modification, `are permitted provided that the following conditions are met:         |
|                                                                                      |
| Redistributions of source code must retain the above copyright notice, this          |
| list of conditions and the following disclaimer.                                     |
|                                                                                      |
| Redistributions in binary form must reproduce the above copyright notice,            |
| this list of conditions and the following disclaimer in the documentation            |
| and/or other materials provided with the distribution.                               |
|                                                                                      |
| Neither the name of the owner nor the names of its contributors may                  |
| be used to endorse or promote products derived from this software without            |
| specific prior written permission.                                                   |
|                                                                                      |
| THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"          |
| AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE            |
| IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE           |
| ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE            |
| LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR                  |
| CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF                 |
| SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS             |
| INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN              |
| CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)              |
| ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE           |
| POSSIBILITY OF SUCH DAMAGE.                                                          |
+--------------------------------------------------------------------------------------+
=end LICENSE  
=cut 

package Flexible::Scripting::Tools;
# file = Boolean.pm
use warnings;
#no warnings; # this is like this because when you use warnings, and only use $TRUE once in your script, your script will whine about it.  
use strict;


use Exporter qw( import );

# I think that this is supposed to be better than use vars qw(@ISA @EXPORT);
our @ISA = qw(Exporter);
#use vars qw(@ISA @EXPORT);

our $VERSION = '0.03.4';
#@ISA = qw(Exporter);

our @EXPORT = qw( donothing $TRUE $FALSE );
# export dat variable, yay!
# TRUE -- set the $TRUE variable so that it will be the truth and nothing but the truth :P 

use Readonly;
Readonly::Scalar our $TRUE => 1;
Readonly::Scalar our $FALSE => 0;
# originally I was doing this 
# Readonly my $TRUE => 1;
# but I couldn't get it to compile. 

# the do nothing function, which is extremely useful for testing or for when you just need to fill in an if statement because of syntax requirements like in BASH::

sub donothing
{
    sleep 0;
}



=example -- bash

if true; then
    true; # do nothing
else 
    echo "DANGER, DANGER, WILL ROBINSON!";
fi

=end of example -- bash
=cut 

=this is based on a program I wrote for commandline use.  Thought it might come in handy for faster string length printing.  
in which case this function will be moved to my Flexible::Output::Printer.  
sub slength
{
#!/usr/bin/perl
# slength
use warnings ;

#print $#ARGV ;
if ($#ARGV < 0) {
	print "\e[1;34mUsage:\e[0m perl slength.perl <STRING>\n";
	exit; 
}
$string = $ARGV[0] ;
$MyLength = length($string) ;
print $MyLength, "\n";
=end
=cut



# this way you can do something like this:

=example 0

while ( $TRUE ) 
{
    ping my next door neighbors house so that they run around and I can steal their doughnuts; # ;) :P

    }

    or, for the more practically-inclined:
    
    while ( $TRUE ) # watch my logs like a momma hawk watches her eggs... or like a coach-potato watches TV, no offense plz.  
    {	
	my $result_not_yours = `ls /var/log/`;
	system('sleep 5s');
	print $result_not_yours;
	}


=end of example 0
=cut

=begin com1

 old code that I probably won't ever use again, but that I don't believe in deleting because you never know.  :P  ;)  
 sub true

{ 
    if ( @_ )
    {
	if ( $_[0] eq 't' )
	{
	    return 't';
	}
	elsif ( $_[0] eq 'T' )
	{
	    return 'T';
	}
	elsif ( $_[0] eq '0' || $_[0] eq '#' )
	{
	    return 0;
	}
    }
    else 
    {
	return 'True';
    }
}

sub True
{
    return 0;
}


sub false
{
    return;
}

sub False
{
    return;
}

=end
=cut

1;

__END__

=head1 NAME

Testing::Values::Boolean - Provides static boolean values, so that you don't have to write your own.

