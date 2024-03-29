use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'		=> 'Net::Chat::Daemon',
    'VERSION_FROM'	=> 'lib/Net/Chat/Daemon.pm', # finds $VERSION
    'PREREQ_PM'		=> { 'Net::Jabber' => 1.3 },
    'EXE_FILES'         => [ qw(scripts/jserv scripts/jabber) ],
    ($] >= 5.005 ?    ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM => 'lib/Net/Chat/Daemon.pm', # retrieve abstract from module
       AUTHOR     => 'Steve Fink <sfink@cpan.org>') : ()),
);
