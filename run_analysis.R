
# read the data
subject_test <- read.table("UCI HAR Dataset/crsr/subject_test.txt", quote="\"", comment.char="")
subject_train <- read.table("UCI HAR Dataset/crsr/subject_train.txt", quote="\"", comment.char="")
X_test <- read.table("UCI HAR Dataset/crsr/X_test.txt", quote="\"", comment.char="")
X_train <- read.table("UCI HAR Dataset/crsr/X_train.txt", quote="\"", comment.char="")
y_test <- read.table("UCI HAR Dataset/crsr/y_test.txt", quote="\"", comment.char="")
y_train <- read.table("UCI HAR Dataset/crsr/y_train.txt", quote="\"", comment.char="")

# Merges the training and the test sets to create one data set.
dataSubject <- rbind(subject_train, subject_test)
dataActivity<- rbind(y_train, y_test)
dataFeatures<- rbind(X_train, X_test)

#remane datasets
names(dataSubject)<-c("subject")
names(dataActivity)<- c("activity")
features <- read.table("C:/Users/unicu/Desktop/Dataset/UCI HAR Dataset/crsr/features.txt", quote="\"", comment.char="")
names(dataFeatures)<- features$V2

#merge all three datasets
datatemp <- cbind(dataSubject, dataActivity)
Data <- cbind(dataFeatures, datatemp)

#Extracts only the measurements on the mean and standard deviation for each measurement.
meanorstd <- features$V2[grepl("mean\\(\\)|std\\(\\)", features$V2)]
selectedNames<-c(as.character(meanorstd), "subject", "activity" )
SubData<-subset(Data,select=selectedNames)


#Uses descriptive activity names to name the activities in the data set
SubData$activity <- factor(SubData$activity, labels=c("Walking","Walking Upstairs", "Walking Downstairs", "Sitting", "Standing", "Laying"))


#Appropriately labels the data set with descriptive variable names.
names(SubData)<-gsub("^t", "time", names(SubData))
names(SubData)<-gsub("^f", "frequency", names(SubData))
names(SubData)<-gsub("Acc", "Accelerometer", names(SubData))
names(SubData)<-gsub("Gyro", "Gyroscope", names(SubData))
names(SubData)<-gsub("Mag", "Magnitude", names(SubData))
names(SubData)<-gsub("BodyBody", "Body", names(SubData))


#From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(plyr)
SubData2<-aggregate(. ~subject + activity, SubData, mean)
SubData2<-SubData2[order(SubData2$subject,SubData2$activity),]
write.table(SubData2, file = "tidydata.txt",row.name=FALSE)
