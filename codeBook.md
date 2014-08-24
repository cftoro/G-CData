### CODE BOOK

In this github repository you will find:

* run_analysis.R script
* tidy_data.txt  - final tidy dataset, with avereged measurements for every subject and activity.
* README file describing how the script works
* codeBook - which you're reading now!



## The original Data source

The data used for this task can be found by the following citation:


[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

and consists of measurements obstained from sensor signals, obstained as described in data source:

"The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details."

This measures were obtained as subjects were performing six types of activities.


## Variables found in the Data relevant to the task

From the original dataset only the means and standard deviations of the measurements were collected. 

*ID - is a subject ID
*activity - is an activity pefrormed by the subject

Some of the variables found in the original data are shown below:

*tBodyAcc-XYZ
*tGravityAcc-XYZ
*tBodyAccJerk-XYZ
*tBodyGyro-XYZ
*tBodyGyroJerk-XYZ
*tBodyAccMag
*tGravityAccMag
*tBodyAccJerkMag
*tBodyGyroMag
*tBodyGyroJerkMag
*fBodyAcc-XYZ
*fBodyAccJerk-XYZ
*fBodyGyro-XYZ
*fBodyAccMag
*fBodyAccJerkMag
*fBodyGyroMag
*fBodyGyroJerkMag





## Manipulation and "cleaning" of the original Data


Original datasets were stored in two separate file: test and training. Variable names, activities labels, and subcject IDs were stored in separate files.

Datasets were merged into one data frame, columns were names, and column with activities and subject IDs were assigned. Indices of column names were "mean" or "std" apperes were obtained and dataset was subseted by the indices.

The dataframe was then melted by subject IDs and activity, put together into a new data frame and the average was taken by subject and activity.

This dataset was exported to tidy_data.txt.
