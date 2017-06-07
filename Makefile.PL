use ExtUtils::MakeMaker;
use Alien::Build::MM;

my $abmm = Alien::Build::MM->new;

WriteMakefile($abmm->mm_args(
  ABSTRACT => 'Discovery Installation of openssl for Perl',
  DISTNAME => 'Alien-OpenSSL',
  NAME     => 'Alien::OpenSSL',
  VERSION_FROM => 'lib/Alien/OpenSSL.pm',
  PREREQ_PM => {
  }
));

sub MY::postamble {
  $abmm->mm_postamble;
}
