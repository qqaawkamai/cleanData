

## read in the data
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/Y_train.txt")
sub_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/Y_test.txt")
sub_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")


## combine the data to create one data set
data_set <- rbind(cbind(sub_train, y_train, x_train), cbind(sub_test, y_test, x_test))


## extract features that are mean() or std() + Activity Code and Subject
## give columns appropriate names
features <- read.table("features.txt")
mean_std_cols <- grep(".*mean\\(\\).*|.*std\\(\\).*", features$V2) + 2
colNums <- append(c(1,2), mean_std_cols)
colNames <- append(c("subject","activity_code"), 
                   as.character(features[mean_std_cols,2]))

## extract appropriate columns
data_set <- data_set[ ,colNums]

## give columns appropriate names
names(data_set) <- colNames

## merge activity_names with data_set
activity_labels <- read.table("activity_labels.txt")
data_set$activity <- activity_labels[data_set$activity_code,2]

## rearrange columns so activity is beside activity_code
## not necessary but helps with reading table
data_set <- data_set[,c(1:2,69,3:68)]


## create tidy data set with means
library(reshape2)
dataMelt <- melt(data_set, id=c("subject", "activity"))
tidyData <- dcast(dataMelt, subject + activity ~ variable, mean)
write.csv(tidyData, "meansDataSet.csv")
write.table(tidyData, "meansDataSet.txt", sep="\t")
