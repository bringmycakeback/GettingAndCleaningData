#####
# R Script for Getting and Cleaning Data - Course Project
####

# Merges the training and the test sets to create one data set.

train_vars <- read.table("UCI HAR Dataset/train/X_train.txt")
train_acts <- read.table("UCI HAR Dataset/train/y_train.txt")
train_subj <- read.table("UCI HAR Dataset/train/subject_train.txt")

test_vars <- read.table("UCI HAR Dataset/test/X_test.txt")
test_acts <- read.table("UCI HAR Dataset/test/y_test.txt")
test_subj <- read.table("UCI HAR Dataset/test/subject_test.txt")

train_full <- cbind(train_subj, train_acts, train_vars)
test_full <- cbind(test_subj, test_acts, test_vars)

full_dataset <- rbind(train_full, test_full)

# Appropriately labels the data set with descriptive variable names. 

var_names <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)
names(full_dataset) <- c("subject", "activity", gsub("[-(),]", "_", var_names$V2))

# Extracts only the measurements on the mean and standard deviation for each measurement. 

full_dataset <- full_dataset[, c(1, 2, grep("mean|std", names(full_dataset)))]

# Uses descriptive activity names to name the activities in the data set

act_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
full_dataset$activity <- act_labels$V2[full_dataset$activity]

# Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
  
tidy_dataset <- ddply(full_dataset, .(subject, activity), numcolwise(mean))
write.csv(tidy_dataset, "tidy_dataset.csv")
