GettingAndCleaningData
======================

This repo contains the submission for Getting and Cleaning Data course project.  It contains one file, run_analysis.R, which reads data from the UCI Machine Learning Repository, combines the training and test set, renames and subsets variables, and creates a new tidy data set.

Run the script with the following command:

    source("run_analysis.R")
    
This script will create a CSV file that contains the final tidy dataset.

Code Book - Tidy Dataset
=================

The final tidy dataset contains a single row for each activity done by a certain subject.  The columns are the means of all the original mean and standard deviation variables.  (See below for a description of the original variables.)

Code Book - Original Dataset
=================

The following explanation of the variables included in the final dataset comes from the original collectors of the data, the UC Irvine Center for Machine Learning and Intelligent Systems.  More details can be found at their website:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

*The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.*

*Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).*

*Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).* 

*These signals were used to estimate variables of the feature vector for each pattern:*
*'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.*

tBodyAcc-XYZ

tGravityAcc-XYZ

tBodyAccJerk-XYZ

tBodyGyro-XYZ

tBodyGyroJerk-XYZ

tBodyAccMag

tGravityAccMag

tBodyAccJerkMag

tBodyGyroMag

tBodyGyroJerkMag

fBodyAcc-XYZ

fBodyAccJerk-XYZ

fBodyGyro-XYZ

fBodyAccMag

fBodyAccJerkMag

fBodyGyroMag

fBodyGyroJerkMag

*The set of variables that were estimated from these signals are:*

mean(): Mean value
std(): Standard deviation

Other variables were excluded during the preprocessing phase.
