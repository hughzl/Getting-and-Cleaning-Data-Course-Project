## This script is to accomplish the following tasks:
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names. 
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## download UCI HAR data zip file from Coursera and unzip it to working directory
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url,'HAR.zip',mode="wb")
unzip("HAR.zip")

## load package
library(dplyr)

## read activity_labels file
act_labels <- read.table("./UCI HAR Dataset/activity_labels.txt",
                           col.names=c("act_id","act_name"),stringsAsFactors=FALSE)
act_labels[,2] <- tolower(act_labels[,2])

## read features file
features <- read.table("./UCI HAR Dataset/features.txt",stringsAsFactors=FALSE)

## get column indexes for mean and std measurements from the features dataset
mean_ind <- grep("mean()",features$V2, fixed = TRUE)
std_ind <- grep("std()",features$V2, fixed = TRUE)

## remove "()" and "-" from features
features[,2] <- sub("\\(\\)","",features[,2])
features[,2] <- gsub("-","",features[,2])

## read test data files
test_data <- read.table("./UCI HAR Dataset/test/X_test.txt")
test_labels <- read.table("./UCI HAR Dataset/test/y_test.txt", col.names="act_id")
test_subjects <- read.table("./UCI HAR Dataset/test/subject_test.txt",col.names="sub_id")

## rename columns in test_data with feature names and subset mean and std columns
colnames(test_data) <- features[,2]
test_mean_std <- test_data[,c(mean_ind,std_ind)]

## bind test subject ids, activity labels to test_mean_std 
test_final <- cbind(test_subjects,test_labels,test_mean_std)

## read training data files
train_data <- read.table("./UCI HAR Dataset/train/X_train.txt")
train_labels <- read.table("./UCI HAR Dataset/train/y_train.txt", col.names="act_id")
train_subjects <- read.table("./UCI HAR Dataset/train/subject_train.txt",col.names="sub_id")

## rename columns, subset mean and std columns and bind files
colnames(train_data) <- features[,2]
train_mean_std <- train_data[,c(mean_ind,std_ind)]
train_final <- cbind(train_subjects,train_labels,train_mean_std)

## bind all rows of test and training datasets
all_data <- rbind(test_final,train_final)

## merge activity labels with all_data and remove act_id
all_labeled <- merge(act_labels, all_data, by="act_id")
all_labeled$act_id<-NULL

## group all_labeled by act_name and sub_id
all_labeled<-group_by(all_labeled,act_name,sub_id)

## calculate mean of each variable for each activity and each subject
newdf<-summarise_all(all_labeled,funs(mean))

## write the result to a text file
write.table(newdf,"newdf.txt",row.names = FALSE)
