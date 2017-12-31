# Getting and Cleaning Data Course Projectless 
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names.
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# key dataset in the R code
Data: dataset merged by test and training dataset
SubData: Subset of dataset with only mean and standard diviation data
SubData2: Appropriately labels the data set with descriptive activity names. 



# Variable Descriptions
Variables are self explanatory in the cleaned dataset, whose names are:

subject	activity	timeBodyAccelerometer-mean()-X	timeBodyAccelerometer-mean()-Y	timeBodyAccelerometer-mean()-Z	timeBodyAccelerometer-std()-X	timeBodyAccelerometer-std()-Y	timeBodyAccelerometer-std()-Z	timeGravityAccelerometer-mean()-X	timeGravityAccelerometer-mean()-Y	timeGravityAccelerometer-mean()-Z	timeGravityAccelerometer-std()-X	timeGravityAccelerometer-std()-Y	timeGravityAccelerometer-std()-Z	timeBodyAccelerometerJerk-mean()-X	timeBodyAccelerometerJerk-mean()-Y	timeBodyAccelerometerJerk-mean()-Z	timeBodyAccelerometerJerk-std()-X	timeBodyAccelerometerJerk-std()-Y	timeBodyAccelerometerJerk-std()-Z	timeBodyGyroscope-mean()-X	timeBodyGyroscope-mean()-Y	timeBodyGyroscope-mean()-Z	timeBodyGyroscope-std()-X	timeBodyGyroscope-std()-Y	timeBodyGyroscope-std()-Z	timeBodyGyroscopeJerk-mean()-X	timeBodyGyroscopeJerk-mean()-Y	timeBodyGyroscopeJerk-mean()-Z	timeBodyGyroscopeJerk-std()-X	timeBodyGyroscopeJerk-std()-Y	timeBodyGyroscopeJerk-std()-Z	timeBodyAccelerometerMagnitude-mean()	timeBodyAccelerometerMagnitude-std()	timeGravityAccelerometerMagnitude-mean()	timeGravityAccelerometerMagnitude-std()	timeBodyAccelerometerJerkMagnitude-mean()	timeBodyAccelerometerJerkMagnitude-std()	timeBodyGyroscopeMagnitude-mean()	timeBodyGyroscopeMagnitude-std()	timeBodyGyroscopeJerkMagnitude-mean()	timeBodyGyroscopeJerkMagnitude-std()	frequencyBodyAccelerometer-mean()-X	frequencyBodyAccelerometer-mean()-Y	frequencyBodyAccelerometer-mean()-Z	frequencyBodyAccelerometer-std()-X	frequencyBodyAccelerometer-std()-Y	frequencyBodyAccelerometer-std()-Z	frequencyBodyAccelerometerJerk-mean()-X	frequencyBodyAccelerometerJerk-mean()-Y	frequencyBodyAccelerometerJerk-mean()-Z	frequencyBodyAccelerometerJerk-std()-X	frequencyBodyAccelerometerJerk-std()-Y	frequencyBodyAccelerometerJerk-std()-Z	frequencyBodyGyroscope-mean()-X	frequencyBodyGyroscope-mean()-Y	frequencyBodyGyroscope-mean()-Z	frequencyBodyGyroscope-std()-X	frequencyBodyGyroscope-std()-Y	frequencyBodyGyroscope-std()-Z	frequencyBodyAccelerometerMagnitude-mean()	frequencyBodyAccelerometerMagnitude-std()	frequencyBodyAccelerometerJerkMagnitude-mean()	frequencyBodyAccelerometerJerkMagnitude-std()	frequencyBodyGyroscopeMagnitude-mean()	frequencyBodyGyroscopeMagnitude-std()	frequencyBodyGyroscopeJerkMagnitude-mean()	frequencyBodyGyroscopeJerkMagnitude-std()




