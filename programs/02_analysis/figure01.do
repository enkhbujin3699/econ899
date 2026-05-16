// This is an example of a data analysis program.

// Every data analysis program reads data from the data/data_for_analysis folder
// (never raw data) and outputs a file to the results folder. 

// This program is called figure01.do, which indicates it will produce the 
// results in Figure 1 of the main text and output them to a file called
// figure01.png in the results folder.

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


// Create the figure and save to results folder.
scatter mpg price
graph export "$results/figure01.png", replace
