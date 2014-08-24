G-CData
=======

- Download of the data files

The data used to generate the tidy dataset was obtained from the UCI Machine Learning Repository. A zip file containing the data was downloaded from "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip".

- Reading data and adding names for variables 

The following files were loaded into R using the read.table function:

X_test.txt (main data file for test dataset)
y_test.txt (activity labels for test dataset)
subject_test.txt (subject labels for test dataset)
X_train.txt (main data file for training dataset)
y_train.txt (activity labels for training dataset)
subject_train.txt (subject labels for training dataset)
features.txt (variable names for main datasets)

Using the cbind() function, the test and train data were merged together.

Variable names (Subject, Activity, and the 561 variable names from the features text) were added with the colnames() function.

- Putting training and test data together

Training and test datasets were merged using the rbind() function. With 10299 observations of 561 variables,  corresponding to a subject and an activity.There were 6 activities: sitting, standing, walking, walking up, walking down and lying. Also, there were 30 subjects from whose smartphones was the data obtained. The time and frequency domain variables were derived from the phone’s accelerometer and gyroscope and there were various replicates for each subject and activity.

- Extract only measurements on mean and sd

The columns which contained mean or sd values were identified using the grep function with the parameter fixed = TRUE to ensure specificity. The identified columns were selected by subsetting and were reunited with the corresponding subjects and activities using the cbind function. The resulting initial tidy data set was checked for missing values; none were found.


- Tidy data with averages of each variable for each activity and subject

The variables "Subject" and "Activity" were turned into factors with 30 and 6 levels, respectively.

The dataset was reshaped using the reshape2 package. First, the data frame was melted using the melt function with "Subject" and "Activity" as ID variables. Then, the dataset was transformed using the dcast function to generate mean values for the replicates for each subject and activity. This resulted in a dataframe with 180 observations of 66 variables for each subject and activity (30 subjects times 6 activities).

The resulting average dataset  were exported into the text files "tidy_data.txt" using the write.table function.
