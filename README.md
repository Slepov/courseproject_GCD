Getting and Cleaning Data Course Project
=================

The R script **run_analysis.R** processes [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) (the initial data set must be unzipped in R's working directory) to generate tidy data set in the output file **tidydata.txt** (is described in **CodeBook.md**).

## Steps

The script processes the raw data as follows:

* Read files into data frames
* Combine the `X_test` and `X_train` data frames
* Extract only the measurements on the mean and standard deviation for each measurement
* Combine the `subject_train` and `subject_test`
* Combine the `y_train` and `y_test`
* Replace activity id codes with descriptive activity names
* Put together the subject, activity and data
* Aggregate data
* Clean the variables names
* Write the output file **tidydata.txt**




