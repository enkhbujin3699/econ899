// This is an example of a data analysis program.

// Every data analysis program reads data from the data/data_for_analysis folder
// (never raw data) and outputs a file to the results folder. 

// This program is called table01.do, which indicates it will produce the 
// results in Table 1 of the main text and output them to a file called
// table01.txt in the results folder.

// Always start by declaring the version and reading in the configuration file
version 19.5
if ("$programs" == "") {
	global programs "../"	
}
do "$programs/config.do"

// Read in data
use "$data/data_for_analysis/auto_clean.dta", clear

// The program should do as little modification to the data as possible, to
// ensure that all analysis programs are working with consistent data.


// Create the table and save to results folder. I am doing this in an
// old-fashioned way by creating a log file. Optional packages will let you do
// better than that.
log using "$results/table01.txt" , text replace
tabstat price mpg , stat(mean sd)
log close
