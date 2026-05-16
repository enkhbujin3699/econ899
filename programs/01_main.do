// This is the main program. All it does is call the other programs in the
// correct order.

// All programs start by setting the version and reading the configuration file
version 19.5
do config.do

// Data prep
do "$programs/01_dataprep/main.do"

// Main analysis
do "$programs/02_analysis/main.do"

// Appendix analysis
do "$programs/03_appendix/main.do"
