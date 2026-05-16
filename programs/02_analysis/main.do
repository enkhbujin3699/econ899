// This is the main data analysis program. All it does is call the other data
// analysis programs in the correct order.  These programs should be named
// after the table or figure they produce.

// All programs start by setting the version and reading the configuration file
version 19.5
if ("$programs" == "") {
	global programs "../"	
}
do "$programs/config.do"

// Tables
do "$programs/02_analysis/table01.do"

// Figures
do "$programs/02_analysis/figure01.do"
