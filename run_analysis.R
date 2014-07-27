## run_analysis.R 
##
## This script called run_analysis.R does the following:
## * Merges the training and the test sets.
## * Extracts only the measurements on the mean and standard deviation for each measurement. 
## * Uses descriptive activity names to name the activities in the data set.
## * Appropriately labels the data set with descriptive variable names. 
## * Creates a tidy data set with the average of each variable for each activity and each subject. 

library(plyr)

## Read files into data frames
print("Reading files...")

features<-read.table("UCI HAR Dataset/features.txt")
X_train<-read.table("UCI HAR Dataset/train/X_train.txt")
y_train<-read.table("UCI HAR Dataset/train/y_train.txt")
subject_train<-read.table("UCI HAR Dataset/train/subject_train.txt")
X_test<-read.table("UCI HAR Dataset/test/X_test.txt")
y_test<-read.table("UCI HAR Dataset/test/y_test.txt")
subject_test<-read.table("UCI HAR Dataset/test/subject_test.txt")
activity_labels<-read.table("UCI HAR Dataset/activity_labels.txt")

print("Cleaning and aggregating data...")

## Combine the train and test data frames
data<-rbind(X_train,X_test)
names(data)<-features[,2]

## Extract only the measurements on the mean and standard deviation for each measurement
feat <- grep("*-mean|-std*", features[,2])
feat2 <- grep("*meanFreq", features[,2])
data<-data[,feat[is.na(match(feat,feat2))]]


## Combine the subject_train and subject_test
subject<-c(subject_train[,1],subject_test[,1]) 

## Combine the y_train and y_test
y<-rbind(y_train,y_test)

## Replace activity id codes with descriptive activity names
act<-join(y,activity_labels) 
activity<-act[,2]

## Put together the subject, activity and data
data<-cbind(data,subject,activity)

## Aggregate data
n<-length(feat[is.na(match(feat,feat2))])
tidydataset <-aggregate(data[1:n], by=list(data$subject,data$activity),FUN=mean, na.rm=TRUE)
names(tidydataset)[1:2]<-c("subject", "activity")

## Clean the variables names
names(tidydataset)<-gsub("\\()","",names(tidydataset))
names(tidydataset)<-gsub("-","_",names(tidydataset))
names(tidydataset)<-gsub("BodyBody","Body",names(tidydataset))


## Write the output file
print("Writing the output file...")
write.table(tidydataset,"tidydata.txt")

print("Done")
