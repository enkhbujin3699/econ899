// This configuration file should be called at the beginning of every 
// data cleaning and analysis program, with the possible exception of the
// setup program (00_setup)

// Stata recommends that all do-files start by declaring the Stata version in
// which they were originally written. This aids replicability by ensuring
// the code is always interpreted the same.
version 19.5

// The next step is to clear the memory to ensure that the program always runs
// from the same initial state.
clear

// If any of your programs uses a random number generator, you may also want to
// set the seed here. Whether or not you do that depends on whether you want
// the behavior of the program to be predictable or unpredictable. 
//
// 1. As you are developing and testing your code, you want unpredictable
//    behavior to ensure the results do not depend much on the specific random
//    you have drawn. Do not set the seed here.
// 2. When creating the final tables and submitting the replication package,
//    you want predictable behavior to ensure the results do not change when
//    you re-run the code.  Set the seed here.

// Next, you need to set the location of various folders.
// This repo - your user may need to edit this
global myrepo "C:/Users/brian/Desktop/GitHub repos/econ899"
// The key subfolders
global programs "$myrepo/programs"
global data "$myrepo/data"
global results "$myrepo/results"

// Other things you could do in this file include:
// 
// - Setting global variables for file and folder locations.
// - Setting other global variables, for example a list of explanatory variables
//   to be included in the base regression specification.
// - Defining functions that will be used in multiple programs.
