## run_analysis does the following:

## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
##      features_subset.txt file was created as filter set from the features.txt
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names. 
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

library(data.table)
library(plyr)
library(dplyr)

# Preload meta tables
activityMetaTable <- read.table("./UCI HAR Dataset/activity_labels.txt",sep = " ",
                                col.names = c("activity_id","activity"))
featureMetaTable <- read.table("./feature_subset.txt",sep = " ",
                               col.names = c("feature_id","feature","feature_label"))



# Load Training and Test Data
subjectTrainingData <- read.table("./UCI HAR Dataset/train/subject_train.txt",sep = " ",
                                  col.names = "subject_id")
yTrainingData <- read.table("./UCI HAR Dataset/train/y_train.txt",sep = " ",
                            col.names = "activity_id")

subjectTestingData <- read.table("./UCI HAR Dataset/test/subject_test.txt",sep = " ",
                                  col.names = "subject_id")
yTestingData <- read.table("./UCI HAR Dataset/test/y_test.txt",sep = " ",
                            col.names = "activity_id")

xTrainingData <- read.table("./UCI HAR Dataset/train/X_train.txt")
xTestingData <- read.table("./UCI HAR Dataset/test/X_test.txt")

# Merge Training and Test Data for Subject and Activities (part of #2)
subjectData <- rbind(subjectTrainingData,subjectTestingData)
rm(subjectTrainingData,subjectTestingData)
yData <- rbind(yTrainingData,yTestingData)

## Subset the columns for feature measurement data
xData <- rbind(xTrainingData[,featureMetaTable$feature_id],xTestingData[,featureMetaTable$feature_id])

## Clean Staging Data Frames (conserve memory)
rm(yTrainingData,yTestingData)
rm(xTestingData,xTrainingData)

## Appropriate name the feature measurement variables according to feature meta-table for STD and Mean
## values -- See the code book for cross reference to actual variables!
names(xData) <- featureMetaTable$feature_label

## Merge to single observation for follows:
## Subject ID, Activity ID, Activity Description, followed by X-Tab of Feature Measurement Variable
observationData <- join(activityMetaTable,yData,by="activity_id",type="inner")
observationData <- cbind(subjectData,observationData,xData)

rm(xData,yData,subjectData)

## Calculate averages for group by subject, activity and each feature

observationData1 <- observationData[,1:69]
bySubjectActivity <- group_by(observationData1,subject_id,activity)
aggregate <- summarize(bySubjectActivity,mean(TBODYACCXMEAN),
                        mean(TBODYACCYMEAN),
                        mean(TBODYACCZMEAN),
                        mean(TBODYACCXSTD),
                        mean(TBODYACCYSTD),
                        mean(TBODYACCZSTD),
                        mean(TGRAVITYACCXMEAN),
                        mean(TGRAVITYACCYMEAN),
                        mean(TGRAVITYACCZMEAN),
                        mean(TGRAVITYACCXSTD),
                        mean(TGRAVITYACCYSTD),
                        mean(TGRAVITYACCZSTD),
                        mean(TBODYACCJERKXMEAN),
                        mean(TBODYACCJERKYMEAN),
                        mean(TBODYACCJERKZMEAN),
                        mean(TBODYACCJERKXSTD),
                        mean(TBODYACCJERKYSTD),
                        mean(TBODYACCJERKZSTD),
                        mean(TBODYGYROXMEAN),
                        mean(TBODYGYROYMEAN),
                        mean(TBODYGYROZMEAN),
                        mean(TBODYGYROXSTD),
                        mean(TBODYGYROYSTD),
                        mean(TBODYGYROZSTD),
                        mean(TBODYGYROJERKXMEAN),
                        mean(TBODYGYROJERKYMEAN),
                        mean(TBODYGYROJERKZMEAN),
                        mean(TBODYGYROJERKXSTD),
                        mean(TBODYGYROJERKYSTD),
                        mean(TBODYGYROJERKZSTD),
                        mean(TBODYACCMAGMEAN),
                        mean(TBODYACCMAGSTD),
                        mean(TGRAVITYACCMAGMEAN),
                        mean(TGRAVITYACCMAGSTD),
                        mean(TBODYACCJERKMAGMEAN),
                        mean(TBODYACCJERKMAGSTD),
                        mean(TBODYGYROMAGMEAN),
                        mean(TBODYGYROMAGSTD),
                        mean(TBODYGYROJERKMAGMEAN),
                        mean(TBODYGYROJERKMAGSTD),
                        mean(FBODYACCXMEAN),
                        mean(FBODYACCYMEAN),
                        mean(FBODYACCZMEAN),
                        mean(FBODYACCXSTD),
                        mean(FBODYACCYSTD),
                        mean(FBODYACCZSTD),
                        mean(FBODYACCJERKXMEAN),
                        mean(FBODYACCJERKYMEAN),
                        mean(FBODYACCJERKZMEAN),
                        mean(FBODYACCJERKXSTD),
                        mean(FBODYACCJERKYSTD),
                        mean(FBODYACCJERKZSTD),
                        mean(FBODYGYROXMEAN),
                        mean(FBODYGYROYMEAN),
                        mean(FBODYGYROZMEAN),
                        mean(FBODYGYROXMEAN),
                        mean(FBODYGYROYMEAN),
                        mean(FBODYGYROZMEAN),
                        mean(FBODYACCMAGMEAN),
                        mean(FBODYACCMAGSTD),
                        mean(FBODYBODYACCJERKMAGMEAN),
                        mean(FBODYBODYACCJERKMAGSTD),
                        mean(FBODYBODYGYROMAGMEAN),
                        mean(FBODYBODYGYROMAGSTD),
                        mean(FBODYBODYGYROJERKMAGMEAN),
                        mean(FBODYBODYGYROJERKMAGSTD)
                        )

## Write Output
write.table(aggregate,"./report.txt",row.names = FALSE)
