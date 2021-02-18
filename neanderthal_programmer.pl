#!/usr/bin/perl
use strict;
use warnings;
print "Hi, we will interpret neanderthal inarticulate sounds from the text file\n";
print "Cześć, oto interpreter do neandertalskiego języka programowania z pliku wejściowego\n";
my $filename = $ARGV[0];
my $operator_symbol = $ARGV[1];
open my $source, '<', $filename or die $!;

while (<$source>)
{
$_ =~ s/[^a-zA-Z,]//g; #remove all characters other than letters

# if operator is found more than once, return syntax error
my @list_of_operators = ($_ =~ m/$operator_symbol/g);
my $nr_of_operators = scalar @list_of_operators; # how many operators were found = @list_of_operators length
if($nr_of_operators > 1)
{
	print "Syntax error, more than one operator found.\n\a";
	print "Błąd składni, w zdaniu może być tylko jeden operator.\n\a";
	close ($source);
	exit;
}


if ($_ =~ m/$operator_symbol/) # find operator_symbol
	{
	$_ =~ /$operator_symbol/; 
	#print "$_";
	my $first_elem = parse_to_binary($`);
	my $second_elem = parse_to_binary($');
	#interpret both as binary numbers
	my $operation_result = two_argument_operation($first_elem, $second_elem);
	print "Your result is $operation_result\n";
	print "Wynik działania to $operation_result\n";
	exit;
	}
	else
	{
	my $parsed_number = parse_to_binary($_);
	print "No calculation performed as it lacks the operator. Your input's value equals: $parsed_number\n";
		print "Brak operatora działania, więc Twój tekst oznacza liczbę:  $parsed_number\n";
	}
}


close ($source);


# subroutines
sub parse_to_binary
{
	my $arg = shift;
	#replace a to 1, y to 0 anything else to nothing and return it as a binary number
	$arg =~ s/[aA]/1/g; # replace all a with 1
	$arg =~ s/[yY]/0/g; # replace all y with 0
	$arg =~ s/[a-zA-Z]//g; # remove all other letters
	return eval('0b'.$arg);
}

sub two_argument_operation
{
	my $arg1 = shift;
	my $arg2 = shift;
	return ($arg1+$arg2);
}
