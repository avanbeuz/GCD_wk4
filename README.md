# GCD_wk4
Coursera GCD week 4

This repository is made as part of an assignment for a coursera course. This assignment requests to use data from:
  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
  
Codebook.MD describes all variables used in the script run_analysis.R

Pre-requisite is a data set as mentioned above is extracted and sits below ./projectdata from the R main working directory

run_analysis.R is an attempt to do the following:
* Read the data as downloaded (2 sets, training and test)
* Combine this data into one set
* Give some sensible names to the columns in this set
* Get oly the mean and standadr deviation related columns form this set into a new
* Transform this new set in a 'tidy' file Keurig.txt with the average of each variable for each activity and each subject.
