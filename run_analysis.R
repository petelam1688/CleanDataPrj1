require("data.table")
require("reshape2")

## load raw data into data table
tblTraingData <- read.table("E://data/Dropbox/private/working/data science/getting and cleaning data/prj1/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt")
tblTraingDataX <- read.table("E://data/Dropbox/private/working/data science/getting and cleaning data/prj1/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt")
tblTraingDataY <- read.table("E://data/Dropbox/private/working/data science/getting and cleaning data/prj1/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/Y_train.txt")
tblTestData <- read.table("E://data/Dropbox/private/working/data science/getting and cleaning data/prj1/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt")
tblTestDataX <- read.table("E://data/Dropbox/private/working/data science/getting and cleaning data/prj1/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt")
tblTestDataY <- read.table("E://data/Dropbox/private/working/data science/getting and cleaning data/prj1/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/Y_test.txt")

##
