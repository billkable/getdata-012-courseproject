# Course Project for getdata-012

## Overview
This project will load, merge and perform mean aggregate against the smart device feature variable
measurements collected as part of training and testing sets outlined @ http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

## Prerequisites
The following are assumed in your environment:

1. R 3.1.2 or later is installed

2. The following packages are installed:

	- data.table
	- plyr
	- dplyr

## How to Run the project
Following are steps to run the analyzer:

1. Checkout this directory, including:
	
	- feature_subset.txt (this file is used to subset ONLY the mean and std feature measurements)
	- run_analysis.R
	
2. It is assumed you have downloaded and extracted test data set from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.  Make sure you include directory generation during extract, the analysis script references the extracted directory.
3. Start R, set working directory to the directory where you have checked out script and feature subset list. 
4. Run the run_analysis.R script.  It will generate report.txt into working directory.  If you have not executed R environment, you can also check out denormalized observation data in the observationData data table.