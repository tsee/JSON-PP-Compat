require 5.00503;
use strict;
use ExtUtils::MakeMaker;

WriteMakefile(
    'NAME'          => 'JSON-PP-Compat',
    'VERSION_FROM'  => 'lib/JSON/PP/Compat.pm', # finds $VERSION
    'PREREQ_PM'     => {
              'Test::More'  => 0,
    },
    ($] >= 5.005 ?    ## Add these new keywords supported since 5.005
      (ABSTRACT=> 'lib/JSON/PP/Compat.pm', # retrieve abstract from module
       AUTHOR     => 'Makamaka Hannyaharamitu, E<lt>makamaka[at]cpan.orgE<gt>') : ()),
    ( $ExtUtils::MakeMaker::VERSION >= 6.3002 ? ('LICENSE' => 'perl', ) : () ),

    ( $ExtUtils::MakeMaker::VERSION >= 6.46 ? (
        'META_MERGE' => {
            resources => {
                repository  =>      'http://github.com/makamaka/JSON',
            },
        } ) : ()
    ),
);

