// This setup file is designed to be run by the user ONCE.

// After it is run, the user should be able to run the main file (main.do) in 
// this folder to produce all results from your paper.

// Examples of things that this file might do:
//
//  1. Install required R/Python/Stata packages from an online package
//     repository.
//  2. Download raw data into the /data/raw_data folder.
//  3. Create required subfolders that are not automatically created 
//  4. Collect system information (e.g., about the local installation of 
//     R/Python/Stata)
//
// Even though it is designed to be run once, nothing bad should happen if the
// user runs it again.

// Example: This code "downloads" one of Stata's built in data sets into the
// raw data folder
sysuse auto
export delimited using "../data/raw_data/auto_raw.csv" , replace

// If using R, replace this file with a similar file called 00_setup.R
// If using Python, replace this file with a a similar file called 00_setup.py
