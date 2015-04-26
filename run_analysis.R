require("data.table")
require("reshape2")

## load raw data into data table
tblTrainingData <- read.table("subject_train.txt")
tblTrainingDataX <- read.table("X_train.txt")
tblTrainingDataY <- read.table("Y_train.txt")
tblTestData <- read.table("subject_test.txt")
tblTestDataX <- read.table("X_test.txt")
tblTestDataY <- read.table("Y_test.txt")

tblFeatures <- read.table("eatures.txt")
##

## rename column names
names(tblTrainingData) <- "ID"
names(tblTestData) <- "ID"
names(tblTrainingDataX) <- tblFeatures$V2
names(tblTestDataX) <- tblFeatures$V2
names(tblTrainingDataY) <- "Activity"
names(tblTestDataY) <- "Activity"

## Requirement 1
## merge both training and test data together
tblTrainingDataXY <- cbind(tblTrainingData, tblTrainingDataY, tblTrainingDataX)
tblTestDataXY <- cbind(tblTestData, tblTestDataY, tblTestDataX)
tblData <- rbind(tblTrainingDataXY, tblTestDataXY)

## Requirement 2
## find which columns are mean or std
vMeanSTDCol <- grepl("mean", names(tblData)) | grepl("std", names(tblData))
vMeanSTDCol[1:2] <- TRUE ## include subject id and activity id

## extract only required columns
tblDataFiltered <- tblData[, vMeanSTDCol]


## Requirement 3 & 4
## label column names correctively
tblDataFiltered$Activity <- factor(tblDataFiltered$Activity, labels=c("Walking", "Walking Upstairs", "Walking Downstairs", "Sitting", "Standing", "Laying"))
## don't know how to name the corresponding readings, but just laborious work to repeat the previous step for all the variables

## Requirement 5
## collapse reading columns into rows
tblDataFilteredCollapseReadings <- melt(tblDataFiltered, id=c("ID", "Activity")) 
tblDataFinal <- dcast(tblDataFilteredCollapseReadings, ID+Activity ~ variable, mean)


## extract data into txt format
write.table(tblDataFinal, "tblDataFinal.txt", row.name=FALSE)
