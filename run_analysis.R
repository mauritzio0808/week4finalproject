#install.packages("dplyr")
#install.packages("reshape2")
library(reshape2)
library(dplyr)

setwd("C:/Users/Rafael.Hernandez.gabrielamontaño/Documents/R/UCI_HAR_Dataset")

# Load activity labels + features
activityLabels <- read.table("activity_labels.txt", header = FALSE)
activityLabels[,2] <- as.character(activityLabels[,2])
features <- read.table("features.txt", header = FALSE)
features[,2] <- as.character(features[,2])

# Extract only the data on mean and standard deviation
featuresWanted <- grep(".*mean.*|.*std.*", features[,2])
featuresWanted.names <- features[featuresWanted,2]
featuresWanted.names = gsub('-mean', 'Mean', featuresWanted.names)
featuresWanted.names = gsub('-std', 'Std', featuresWanted.names)
featuresWanted.names <- gsub('[-()]', '', featuresWanted.names)


# Load the datasets
train <- read.table("train/X_train.txt", header = FALSE)[featuresWanted]
trainActivities <- read.table("train/Y_train.txt", header = FALSE)
trainSubjects <- read.table("train/subject_train.txt", header = FALSE)
train <- cbind(trainSubjects, trainActivities, train)

test <- read.table("test/X_test.txt", header = FALSE)[featuresWanted]
testActivities <- read.table("test/Y_test.txt", header = FALSE)
testSubjects <- read.table("test/subject_test.txt", header = FALSE)
test <- cbind(testSubjects, testActivities, test)

# merge datasets and add labels
allData <- rbind(train, test)
colnames(allData) <- c("subject", "activity", featuresWanted.names)

# turn activities & subjects into factors
allData$activity <- factor(allData$activity, levels = activityLabels[,1], labels = activityLabels[,2])
allData$subject <- as.factor(allData$subject)

allData.melted <- melt(allData, id = c("subject", "activity"))
allData.mean <- dcast(allData.melted, subject + activity ~ variable, mean)

write.table(allData.mean, "tidy.txt", row.names = FALSE, quote = FALSE)
