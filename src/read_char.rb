#!/usr/bin/ruby
# Terminal codes for enabling reading a single char from stdin
print "Character please=>"
system "stty cbreak </dev/tty >/dev/tty 2>&1";
int = STDIN.getc
system "stty -cbreak </dev/tty >/dev/tty 2>&1";
print "\nYou pressed >", int, "<, char >", int.chr, "<\n"

