// This is an example of a file that cleans and prepares data for analysis.

// All programs start by setting the version and reading the configuration file
version 19.5
if ("$programs" == "") {
	global programs "../"	
}
do "$programs/config.do"

// Then we read in some data, usually raw data from the data/raw_data folder
// but occasionally cleaned data from a previously-run program.
import delimited using "$data/raw_data/auto_raw.csv", clear

// When reading in a data file, it is often a good idea to perform a basic 
// check or two to ensure it has not dramatically changed. In Stata, you can
// use the assert command for this purpose.  Assert will confirm that a
// given condition holds, and will stop the program if it does not.
// In the example below, I am checking to ensure that the data set I just loaded
//  has exactly 74 observations.
assert _N == 74

// In Stata you can use the mkassert command to construct assertions from things
// like regression results.

// After reading in the data file, we do various things to clean it
// .
// .
// .


// Then we save it to the data/data_for_analysis folder
save "$data/data_for_analysis/auto_clean.dta", replace
