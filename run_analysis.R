
### Download zip file (if it doesn't exist) and unzip
zipfile <- "UCI HAR Dataset.zip"
URL = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if(!file.exists(zipfile)) download.file(URL,zipfile,method="curl")
unzip(zipfile)

### Read relevant files and merge train and test set
# set directory
dir = "./UCI HAR Dataset/"

# Read name of the variables
MeasureName = read.table(paste0(dir,"features.txt"),col.names=c("num","name"),stringsAsFactors=FALSE)

# Read subject, activities and variables in test
subjectTest = read.table(paste0(dir,"test/subject_test.txt"),col.names=c("sujeto"))
activityTest = read.table(paste0(dir,"test/y_test.txt"))
MeasureTest = read.table(paste0(dir,"test/X_test.txt"),col.names=MeasureName$name)

# Read subject, activities and variables in train
subjectTrain = read.table(paste0(dir,"train/subject_train.txt"),col.names=c("sujeto"))
activityTrain = read.table(paste0(dir,"train/y_train.txt"))
MeasureTrain = read.table(paste0(dir,"train/X_train.txt"),col.names=MeasureName$name)

# Merge train and test set
sujetos = rbind(subjectTest,subjectTrain)
activity = rbind(activityTest,activityTrain)
MeasureTotal = rbind(MeasureTest,MeasureTrain)

### Extracts the measurements on the mean and standard deviation for each mesurement 
# --- Each measurements on the mean and standard deviation contains mean() or std() on its name
# Extract index of variables with "mean()" and "std()" in their name
index = grep("mean\\(\\)*|std\\(\\)",MeasureName$name)
MeasureMeanStd = MeasureTotal[,index]

### Uses descritptive activity names to name the activities in the data set
# Read labels of activities (in "activity_labels.txt")
activityNames = read.table(paste0(dir,"activity_labels.txt"),col.names=c("num","name"))
t1 = factor(activity[,1],activityNames$num,labels=activityNames$name)
# Create whole initital dataframe
dfOriginal = cbind(sujetos,activity=t1,MeasureMeanStd)

### Create a second, independent tidy data set with the average of each variable
# for each activity and each subject
library(reshape2)
dfMelt <- melt(dfOriginal, id=c("sujeto", "activity"), na.rm=TRUE)
newData <- dcast(dfMelt,sujeto + activity ~ variable, mean)
write.csv(newData,file="newTidyData.csv")
