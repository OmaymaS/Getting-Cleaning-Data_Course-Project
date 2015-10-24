# Getting and Cleaning Data (Course Project)
-------------
##Introduction

This project is part of Coursera's "Getting and Cleaning Data" Course. The run_analysis.R is used to process data obtained from certain experiments in order to create a new data set with some criteria. The experiements were carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities, wearing a smartphone (Samsung Galaxy S II) on the waist (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).

The sensor signals(accelerometer and gyroscope) were recorded, pre-processed and used to calculate certain variables from the time and frequency domain.


##Original Data

-The given data can be found [here] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

-A full description is available at the [site] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) where the data was obtained.


##Data Processing 

The **run_analysis.R** performs the following:

**-Read and merge `train` and `test` data**

-The `train` data is read from (`x_train.txt`,`y_train.txt`,`subject_train.txt`) into data tables (`X_train_data`,`Y_train_data`,`subject_train`). Then they get merged 

-The `test` data is read from (`x_test.txt`,`y_test.txt`,`subject_test.txt`) into data tables (`X_test_data`,`Y_test_data`,`subject_test`). 

-the `train` and `test` data are merged data tables (`X_merged`,`Y_merged`,`subject_merged`).

**-Read `features names` and find the indecies of the required features with mean and standard deviation**

-The `features` are read from `features.txt` into data table `features_list` and the features` names are extracted from the 2nd column in `features_names`.
-The indecies of the features with `mean` or `std` are found using grep() and match() and stored in `mean_columns_idx` and `std_columns_idx`.

**-Extract the measurements on the mean and standard deviation for each measurement**

-The extracted indecies `mean_columns_idx` and `std_columns_idx` are used to extract the corresponding measurements `X_extract_mean_std`.

**-Label the data set with descriptive variable names.**

-For each feature name, any special character is removed and any "BodyBody" is replaced with "Body".
-The column names of `X_extract_mean_std` are replaced with the modified names.

**-Create a new data frame with only the selected features**

-The `subject_merged`,`Y_merged`,`X_extract_mean_std` acolumns are used to create the new data frame all_col_df.

**-Create a second, independent tidy data set with the average of each variable for each activity and each subject**

-The aggregate function is used to summerize the data by taking the mean of each feature, resulting into `tidy_data` with 6 rows for each subject, each row corresponds to one activity.

-The `tidy_data` data frame is arranged in `tidy_data_arranged` based on the subject number (1 to 30).

**-Use descriptive activity names to name the activities in the data set**

-The activity numbers (1-6) in `tidy_data_arranged` are replaced by  activity labels extracted from  `activity_labels.txt`.

#Data Export/Final Output

-The final output `tidy_data_arranged` (dim 180*68) is exported and written to a new text file `Samsung_mean_std_data.txt`.

#Code Book
The code book describes the variables in the final tidy data set.


 
