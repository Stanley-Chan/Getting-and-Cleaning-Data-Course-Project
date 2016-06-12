
## Load Packages
library(dplyr)
library(reshape2)

## Dowload data from data source and unzip it
if (!file.exists("./data")){dir.create("./data")}
fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileurl, "./data/projectc3datafile.zip")
if (!file.exists("UCI HAR Dataset")) 
	{ 
  		unzip("./data/projectc3datafile.zip") 
	}

## load data into different dataset
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
features <- read.table("UCI HAR Dataset/features.txt")

## Name the columns for activity and features dataset
colnames(activity_labels) = c("activity", "activityID")
colnames(features) = c("featureID", "feature")

## Extracts only the features or measurements on the mean and standard deviation for each measurement
extract.featureID <- grep(".*mean.*|.*std.*", features$feature) 

## Appropriately labels the data set with descriptive variable names
features.names <- features$feature[extract.featureID]
features.names <- gsub("-mean", "Mean", features.names)
features.names <- gsub("-std", "StdDev", features.names)
features.names <- gsub("^(t)","time",features.names)
features.names <- gsub("^(f)","freq",features.names)
features.names <- gsub("[-()]", "", features.names)

subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
Train_labels <- read.table("UCI HAR Dataset/train/y_train.txt")
Train_results <- read.table("UCI HAR Dataset/train/X_train.txt")[extract.featureID]

## Name the columns for training dataset 
colnames(subject_train) = "subjectID"
colnames(Train_labels) = "activityID"
colnames(Train_results) = features.names

subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
test_labels <- read.table("UCI HAR Dataset/test/y_test.txt")
test_results <- read.table("UCI HAR Dataset/test/X_test.txt")[extract.featureID]

##Name the columns for test dataset
colnames(subject_test) = "subjectID"
colnames(test_labels) = "activityID"
colnames(test_results) = features.names

## Merge the train data
train_dataset <- cbind(subject_train, Train_labels, Train_results)

## Merge the test data
test_dataset <- cbind(subject_test, test_labels, test_results)

## Merge train_dataset and test_dataset into a dataset
proj3dataset <- rbind(train_dataset, test_dataset)

## Reshape the dataset
meltdataset <- melt(proj3dataset, id=c("subjectID", "activityID"))
meantidydata <- dcast(meltdataset, subjectID + activityID ~ variable, mean)

## write to a file
write.table(meantidydata, "./data/tidydataset.txt", row.name=FALSE)













