// This is the main data cleaning program. All it does is call the other data
// cleaning programs in the correct order.  These programs should be numbered
// sequentially.

// All programs start by setting the version and reading the configuration file
version 19.5
if ("$programs" == "") {
	global programs "../"	
}
do "$programs/config.do"

// Right now there is only one program to run
do "$programs/01_dataprep/11_clean_data.do"
