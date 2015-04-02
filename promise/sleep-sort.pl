my @promises;
for @*ARGS -> $a {
    my $wait = start {
        sleep $a
    }
    my $print = $wait.then({
        say $a
    });
    @promises.push($print);
}

await(|@promises);
