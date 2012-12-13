use 5.016002;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'Flexible::Scripting::Tools',
    VERSION_FROM      => 'lib/Flexible/Scripting/Tools.pm', # finds $VERSION
    PREREQ_PM         => {
	# require test::more @ least v0.47
	"Test::More"  => "0.47",
	# require Readonly--at least version 1.03
	"Readonly"    => "1.03",
	}, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT       => 'Tools to help make scripting easier for you.  Like giving you a $TRUE var and a donothing function.', # retrieve abstract from module
       AUTHOR         => 'Alexej G. Magura <agm2819@gmail.com>') : ()),
    LICENSE	      => 'BSD',
    test	      => {
	TESTS => 't/*.t' }
);
