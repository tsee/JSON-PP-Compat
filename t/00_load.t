BEGIN { $| = 1; print "1..1\n"; }
END {print "not ok 1\n" unless $loaded;}

BEGIN { $ENV{PERL_JSON_BACKEND} = 0; }

use JSON::PP5005;
if ($] >= 5.006) {
  require JSON::PP56;
}
if ($] >= 5.008) {
  require JSON::PP58;
}

$loaded = 1;
print "ok 1\n";
