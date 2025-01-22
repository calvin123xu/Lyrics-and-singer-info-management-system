BEGIN {print"{";
ORS=" ";}


$1 ~ /^.*:$/  {
print("\x22"$0"\x22,\n");
}

$1 !~ /^.*:.*$/ {
print($0);
}


END {
ORS="\n";
print("\x22")
print"}"}
