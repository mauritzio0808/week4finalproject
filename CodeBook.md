## Actions taken on data :
1. Download zip file: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
2. Load activity labels (activity labels and features label) + features
3. Extract only the data on mean and standard deviation
4. Load the datasets X_train and Y_train
5. Turn activities & subjects into factors.
6. Create file tidy.txt

## Data Set Information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. 
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Tidy.txt Variables each with its respective Mean (X,Y, X) and Std (X, Y, Z):
- tBody
- tGravity 
- tBodyAccJerk 
- tBodyGyro 
- tBodyGyroJerk 
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag 
- tBodyGyroMag 
- tBodyGyroJerkMag
- ffBodyAcc
- fBodyAccMeanFreq
- fBodyAccJerk
- fBodyAccJerkMeanFreq
- fBodyGyroMean
- fBodyGyroMeanFreq
- fBodyAccMagMean 
- fBodyAccMagMeanFreq 
- fBodyBodyAccJerkMagMean 
- fBodyBodyGyroMagMean
- fBodyBodyGyroJerkMag
