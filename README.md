Getting and Cleaning Data - week 4 finalproject
The data was downloaded and read into variables. The run_analysis.R program combines the training and test data sets. It extracts the mean or standard deviation. The run_analysis.R program generates a new data set out of the mean and standard deviation, which is an average of activity type for all subjects. The run_analysis.R program generates a new tidy, independent dataset that is saved in the tidy.txt file. This repo contains: a)	README.md: this file b)	CodeBook.md: information about raw and tidy data set and elaboration made to transform them c)	run_analysis.R: R script to transform raw data set in a tidy one d) tidy.txt

# Getting and Cleaning Data - week 4 finalproject

The purpose of the following project is apply all the learnings during the 4 weeks of the Getting and Cleaning Data course using the
Human Activity Recognition Using Smartphones Data Set

## Getting Started
For the folllowing project I will be using the next Data Set https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip which includes the next files:

* 'features_info.txt': Shows information about the variables used on the feature vector.
* 'features.txt': List of all features.
* 'activity_labels.txt': Links the class labels with their activity name.
* 'train/X_train.txt': Training set.
* 'train/y_train.txt': Training labels.
* 'test/X_test.txt': Test set.
* 'test/y_test.txt': Test labels.

## Installing
It is necessary to install the following packages:
* reshape2 
* dplyr

## Final Output
The result of the project is to produce a tidy data text file where every activity label has it own measurements on the mean and standard deviation and the labels do not contain cappital letters, blank spaces, periods, etc. 
