CODEBOOK
========================================================

### The data set created contains the average of the mean and the standard deviation of each measurement for each activity and each subject of the experiment "Human Activity recongnition using smartphones data set"

The data set created have this 180 observatios (6 activities for each of the 30 volunteer in the experiment) with 68 variables (66 physical measurement + sujeto+activity) and the following structure:

   nrow| sujeto | activity         |tBodyAcc.mean...X|tBodyAcc.mean...Y| .... 
   -----|------ | ---------------- |-----------------|-----------------|------
    1   |     1 |WALKING           |        0.2773308|     -0.017383819|....
    2   |     1 |WALKING_UPSTAIRS  |        0.2554617|     -0.023953149|...  
    3   |     1 |WALKING_DOWNSTAIRS|        0.2891883|     -0.009918505| ... 
    4   |     1 |SITTING           |        0.2612376|     -0.001308288| ... 
    5   |     1 |STANDING          |        0.2789176|     -0.016137590| ... 
    6   |     1 |LAYING            |        0.2215982|     -0.040513953| ... 
    7   |     2 |WALKING           |        0.2764266|     -0.018594920| ...
    ..  |     ..|  .....           |   ..............| ............... | ...
   180  |     ..|  .....           |   ..............| ............... | ...  
   
Fieds:  
[1] __sujeto__ Number of the voluteer in the experiment  
[2] __activity__ Name of the activity (WALKING,WALKING_UPSTAIRS,WALKING_DOWNSTAIRS, SITTING), STANDING,LAYING)  

From [3] to [68]: mean of the original variables wich conteined mean and standard deviation of individual measurement. It's name describe the physical measurement related with 

Numero | Variable name | Variable name
------ | ------------- | -------------
[3]    |"tBodyAcc.mean...X"           |"tBodyAcc.mean...Y"          
[5] |"tBodyAcc.mean...Z"           |"tBodyAcc.std...X"           
[7] |"tBodyAcc.std...Y"            |"tBodyAcc.std...Z"           
[9] |"tGravityAcc.mean...X"        |"tGravityAcc.mean...Y"       
[11]| "tGravityAcc.mean...Z"       |"tGravityAcc.std...X"        
[13]| "tGravityAcc.std...Y"        | "tGravityAcc.std...Z"        
[15]| "tBodyAccJerk.mean...X"   |    "tBodyAccJerk.mean...Y"      
[17]| "tBodyAccJerk.mean...Z"   |    "tBodyAccJerk.std...X"       
[19]| "tBodyAccJerk.std...Y"    |    "tBodyAccJerk.std...Z"       
[21]| "tBodyGyro.mean...X"       |   "tBodyGyro.mean...Y"         
[23]| "tBodyGyro.mean...Z"       |   "tBodyGyro.std...X"          
[25]| "tBodyGyro.std...Y"        |   "tBodyGyro.std...Z"          
[27]| "tBodyGyroJerk.mean...X"   | "tBodyGyroJerk.mean...Y"     
[29]|"tBodyGyroJerk.mean...Z"      |"tBodyGyroJerk.std...X"      
[31]| "tBodyGyroJerk.std...Y"       |"tBodyGyroJerk.std...Z"      
[33]| "tBodyAccMag.mean.."          |"tBodyAccMag.std.."          
[35]| "tGravityAccMag.mean.."|       "tGravityAccMag.std.."       
[37]| "tBodyAccJerkMag.mean.."|      "tBodyAccJerkMag.std.."      
[39]| "tBodyGyroMag.mean.."    |     "tBodyGyroMag.std.."         
[41]| "tBodyGyroJerkMag.mean.." |    "tBodyGyroJerkMag.std.."     
[43]| "fBodyAcc.mean...X"        |   "fBodyAcc.mean...Y"          
[45]| "fBodyAcc.mean...Z"         |  "fBodyAcc.std...X"           
[47]| "fBodyAcc.std...Y"           | "fBodyAcc.std...Z"           
[49]| "fBodyAccJerk.mean...X"  |     "fBodyAccJerk.mean...Y"      
[51]| "fBodyAccJerk.mean...Z"   |    "fBodyAccJerk.std...X"       
[53]| "fBodyAccJerk.std...Y"     |   "fBodyAccJerk.std...Z"       
[55]| "fBodyGyro.mean...X"        |  "fBodyGyro.mean...Y"         
[57]| "fBodyGyro.mean...Z"         | "fBodyGyro.std...X"          
[59]| "fBodyGyro.std...Y"       |    "fBodyGyro.std...Z"          
[61]| "fBodyAccMag.mean.."       |   "fBodyAccMag.std.."          
[63]| "fBodyBodyAccJerkMag.mean.."|  "fBodyBodyAccJerkMag.std.."  
[65]| "fBodyBodyGyroMag.mean.."    | "fBodyBodyGyroMag.std.."     
[67]| "fBodyBodyGyroJerkMag.mean.." |"fBodyBodyGyroJerkMag.std.." 

## Original variables, data and transformation performed to clean up the original data

Original data from the course website that represent data collected from the accelerometers from the Samsung Galay S smartphone:
 * __https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip__    
 
A full description is available at the site where the data was obtained: 
  * __http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones_ 

The original data contains the following files:  
__File structure__  
   __features.txt__ (file with the names of the 561 variables in X_test and X_train)  
   __activity_labes.txt__ (Name of coded activities)  
...test   
....... __subject_test.txt__ (Subjects)    
....... __X_test.txt__ (Variables)  
....... __y_test.txt__ (Coded activities)  
...train  
....... __subject_train.txt__ (Subjects)   
....... __X_train.txt__ (Variables)  
....... __y_train.txt__ (Coded activities)  


Original data were processed with the script __run_analysis.R__ which does the following:  
* Download the zip (if it doesn't exists)
* Unzip the zip
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive activity names. 
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
* Store the file as __newTidyData.csv__  


