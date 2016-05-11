#!/usr/bin/perl
<<<<<<< HEAD
#/**
# * perl script base
# *
# * @author yzueki
# *
# */
use constant	DEBUG	=> true;
use constant	VERSION	=> '1.00';

sub usage {
	my @texts = @_;
	foreach (@texts) {
		print $_;
	}
	die "usage:\n  $0 ...\n";
}
sub debug {
	if (!DEBUG) {
		return;
	}
	my @texts = @_;
	foreach (@texts) {
		print "DEBUG:".$_."\n";
	}
}

if (!@ARGV) {
	&usage("need arguments.\n");
}
if ($ARGV[0] =~ /^-h$/i || $ARGV[0] =~ /^-help$/i) {
	&usage("");
}
if ($ARGV[0] =~ /^-v$/i || $ARGV[0] =~ /^-version$/i) {
	&usage("version: ".VERSION."\n");
}
@commands = ();
for (@ARGV) {
	if ($_ !~ /^-[a-z|0-9]+$/i) {
		push (@commands, $_);
		next;
	}
	# ToDo: As option settings
	&debug("option:$_");
}

$readfile = shift(@commands);
if (!-r $readfile) {
	&usage("file not exists[$readfile].\n");
}
open(FILE, $readfile) || &usage("file cannot read.\n");
while(<FILE>) {
	# ToDo: As read file
	&debug("read:$_");
}
close(FILE);
=======
while(<>) {
	
}
>>>>>>> b0a599c97c46bab6f62ce2466c94c4876e7cfccd
exit;
