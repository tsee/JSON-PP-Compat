BEGIN { $| = 1; print "1..1\n"; }
END {print "not ok 1\n" unless $loaded;}

BEGIN { $ENV{PERL_JSON_BACKEND} = 0; }

use JSON::PP::Compat;
if ($] >= 5.005 && $] < 5.006) {
  require JSON::PP5005;
}
elsif ($] >= 5.006 && $] < 5.008) {
  require JSON::PP56;
}
elsif ($] >= 5.008) {
  require JSON::PP58;
}

$loaded = 1;
print "ok 1\n";
