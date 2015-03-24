#!/usr/bin/perl -w

# declare the array named @bases to store nucleotide sequence
@bases = ();
# populating the array with nucleotides
# @bases = ('A', 'C', 'G', 'T') is useful for a small amt of data
# pull in from a bases.txt file if a large amount of data
#open the file where array data is stored; each portion of array must be on new line
open(BASEFILE, 'RLS_fav_gene.txt');
#read the bases from the file and store in array @bases
@bases = <BASEFILE>;
#closing the basefile
close BASEFILE;

#declare array named @data to store another fictional nucleotide sequence
@data = ();
#populate the array
#pull in from my_fav_gene.txt
open (DATAFILE, 'my_fav_gene.txt');
@data = <DATAFILE>;
close DATAFILE;


#print first element in array @bases
print "My favorite genes are:";
print $data[0];
#add exon number to end of array, which will be $exon_number same as $bases[4]
$exon_number = 10;
push (@bases, $exon_number);
#add species name to beginning of array
#$species is now $bases[0], others increased by 1
$species = "Homo sapiens";
unshift(@bases, $species);
$yourspecies = "Your mom";
unshift(@data, $yourspecies);

#open the results file or exit
open(RESULTS, ">fav_gene_results.txt") || die "Error can't open input file: $!n";
#store the results ($bases) in RESULTS
#written to fav_gene_file.txt
print RESULTS "$species $bases[2] $bases[4] $yourspecies $data[3]";