require("data.table")
require("reshape2")

## load raw data into data table
tblTrainingData <- read.table("E://data/Dropbox/private/working/data science/getting and cleaning data/CleanDataPrj1/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt")
tblTraininggDataX <- read.table("E://data/Dropbox/private/working/data science/getting and cleaning data/CleanDataPrj1/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt")
tblTraininggDataY <- read.table("E://data/Dropbox/private/working/data science/getting and cleaning data/CleanDataPrj1/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/Y_train.txt")
tblTestData <- read.table("E://data/Dropbox/private/working/data science/getting and cleaning data/CleanDataPrj1/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt")
tblTestDataX <- read.table("E://data/Dropbox/private/working/data science/getting and cleaning data/CleanDataPrj1/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt")
tblTestDataY <- read.table("E://data/Dropbox/private/working/data science/getting and cleaning data/CleanDataPrj1/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/Y_test.txt")

tblFeatures <- read.table("E://data/Dropbox/private/working/data science/getting and cleaning data/CleanDataPrj1/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/features.txt")
##

## rename column names
names(tblTrainingData) <- "ID"
names(tblTestData) <- "ID"
