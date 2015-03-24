#!/usr/bin/perl -w

# open the file with data from ncbi, or exit
open (DATAFILE, "datafile.txt") || die "Can't open data file: $!\n";

# store the data from the filehandle, which is a temp housing for data, in a variable 
$data = <DATAFILE>;

#close the files
close DATAFILE;

# print the data
print $data;

#transcribing DNA into RNA
$DNA = 'ATGACACCTTCTCAGGTTGCCTTTGAAATAAGAGGAACTCTTTTACCAGGAGAAGTTTTTGCGATATGTG';

#print DNA onto screen
print "Here is the starting DNA: \n\n";

print "$DNA\n\n";

#make new variable $RNA containing copy of my DNA seq in $dna
$RNA=$DNA;

#chg all T residues to U res to make RNA from the DNA
#the binding operator =~ will:
# s means sub T for U in data globally
$RNA =~ s/T/U/g;

#print the RNA onto the screen
print "Here is the result of transcribing the DNA to RNA:\n\n";

print "$RNA\n";

#Now calculate the reverse complement of $DNA
$revcom = reverse $DNA;

$revcom =~ tr/ACGTacgt/TGCAtgca/;

print "Here is the reverse complement DNA:\n\n";
print "$revcom\n";

