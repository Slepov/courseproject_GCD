Code Book
=================
The tidy data set is built from [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) using **run_analysis.R** script.

## Data Set Information

The tidy data set contains the mean values aggregated over 30 subjects and 6 activities 

## Transformations

* Reunion the train and test data
* Extract only the measurements on the mean and standard deviation for each measurement
* Aggregate data
* Clean the variables names

## Data Columns

* subject - the unique ID of the subject (1..30)

* activity - activity labels ("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")

* The remaining variables are described in the raw data zip file.

"tBodyAcc_mean_X"

"tBodyAcc_mean_Y" 

"tBodyAcc_mean_Z" 

"tBodyAcc_std_X" 

"tBodyAcc_std_Y" 

"tBodyAcc_std_Z" 

"tGravityAcc_mean_X" 

"tGravityAcc_mean_Y" 

"tGravityAcc_mean_Z" 

"tGravityAcc_std_X" 

"tGravityAcc_std_Y" 

"tGravityAcc_std_Z" 

"tBodyAccJerk_mean_X" 

"tBodyAccJerk_mean_Y" 

"tBodyAccJerk_mean_Z" 

"tBodyAccJerk_std_X" 

"tBodyAccJerk_std_Y" 

"tBodyAccJerk_std_Z" 

"tBodyGyro_mean_X" 

"tBodyGyro_mean_Y" 

"tBodyGyro_mean_Z" 

"tBodyGyro_std_X" 

"tBodyGyro_std_Y" 

"tBodyGyro_std_Z" 

"tBodyGyroJerk_mean_X" 

"tBodyGyroJerk_mean_Y" 


"tBodyGyroJerk_mean_Z" 

"tBodyGyroJerk_std_X" 

"tBodyGyroJerk_std_Y" 

"tBodyGyroJerk_std_Z" 

"tBodyAccMag_mean" 

"tBodyAccMag_std" 

"tGravityAccMag_mean" 

"tGravityAccMag_std" 

"tBodyAccJerkMag_mean" 

"tBodyAccJerkMag_std" 

"tBodyGyroMag_mean" 

"tBodyGyroMag_std" 

"tBodyGyroJerkMag_mean" 

"tBodyGyroJerkMag_std" 

"fBodyAcc_mean_X" 

"fBodyAcc_mean_Y" 

"fBodyAcc_mean_Z" 

"fBodyAcc_std_X" 

"fBodyAcc_std_Y" 

"fBodyAcc_std_Z" 

"fBodyAccJerk_mean_X" 

"fBodyAccJerk_mean_Y" 

"fBodyAccJerk_mean_Z" 

"fBodyAccJerk_std_X" 

"fBodyAccJerk_std_Y" 

"fBodyAccJerk_std_Z" 

"fBodyGyro_mean_X" 

"fBodyGyro_mean_Y" 

"fBodyGyro_mean_Z" 

"fBodyGyro_std_X" 

"fBodyGyro_std_Y" 

"fBodyGyro_std_Z" 

"fBodyAccMag_mean" 

"fBodyAccMag_std" 

"fBodyAccJerkMag_mean" 

"fBodyAccJerkMag_std" 

"fBodyGyroMag_mean" 

"fBodyGyroMag_std" 

"fBodyGyroJerkMag_mean" 

"fBodyGyroJerkMag_std"