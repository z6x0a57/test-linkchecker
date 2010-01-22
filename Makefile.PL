use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Test::LinkChecker',
    AUTHOR              => q{z6x0a57 <z6x0a57@gmail.com>},
    VERSION_FROM        => 'lib/Test/LinkChecker.pm',
    ABSTRACT_FROM       => 'lib/Test/LinkChecker.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Test-LinkChecker-*' },
);
