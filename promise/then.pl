my $p = Promise.in(2);
my $t = $p.then({say "OK"});
sleep 3;
say "done";
say $t.WHAT;