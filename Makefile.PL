use strict;
use warnings;

use ExtUtils::MakeMaker;

my %WriteMakefileArgs = (
  ABSTRACT => 'Discovery Installation of openssl for Perl',
  DISTNAME => 'Alien-OpenSSL',
  NAME     => 'Alien::OpenSSL',
  VERSION_FROM => 'lib/Alien/OpenSSL.pm',
  BUILD_REQUIRES => {
    'Test::Alien' => 0,
  },
  PREREQ_PM => {
    'Alien::Build' => 0.43,
  }
);

if (eval "use Alien::Build::MM; 1;") {
  my $abmm = Alien::Build::MM->new;
  %WriteMakefileArgs = $abmm->mm_args(%WriteMakefileArgs);

  no strict 'refs';
  *{"MY::postamble"} = sub { $abmm->mm_postamble; };
}

WriteMakefile(%WriteMakefileArgs);
