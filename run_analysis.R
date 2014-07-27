##  
## You should create one R script called run_analysis.R that does the following. 
## 1 Merges the training and the test sets to create one data set.
## 2 Extracts only the measurements onfe the mean and standard deviation for each measurement. 
## 3 Uses descriptive activity names to name the activities in the data set
## 4 Appropriately labels the data set with descriptive variable names. 
## 5 Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

## 0

features<-read.table("UCI HAR Dataset/features.txt")

X_train<-read.table("UCI HAR Dataset/train/X_train.txt")
y_train<-read.table("UCI HAR Dataset/train/y_train.txt")
subject_train<-read.table("UCI HAR Dataset/train/subject_train.txt")

X_test<-read.table("UCI HAR Dataset/test/X_test.txt")
y_test<-read.table("UCI HAR Dataset/test/y_test.txt")
subject_test<-read.table("UCI HAR Dataset/test/subject_test.txt")

activity_labels<-read.table("UCI HAR Dataset/activity_labels.txt")

## 1 
data<-rbind(X_train,X_test)
names(data)<-features[,2]

## 2
feat <- grep("*-mean|-std*", features[,2])
feat2 <- grep("*meanFreq", features[,2])

data<-data[,feat[is.na(match(feat,feat2))]]


#
subject<-c(subject_train[,1],subject_test[,1])

y<-rbind(y_train,y_test)
library(plyr)
act<-join(y,activity_labels)
activity<-act[,2]

data<-cbind(data,subject,activity)

n<-length(feat[is.na(match(feat,feat2))])
tidydataset <-aggregate(data[1:n], by=list(data$subject,data$activity),FUN=mean, na.rm=TRUE)
names(tidydataset)[1:2]<-c("subject", "activity")

write.table(tidydataset,"data.txt")

## names(data)<-features[feat[is.na(match(feat,feat2))],2]

## library(plyr)