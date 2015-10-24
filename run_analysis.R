#Getting & Cleaning Data - Course Project Draft
#by:OmaymaS 23-Oct-2015

# make sure the working directory is as follows
# getwd() >> "./UCI HAR Dataset"

#load libraries
library(dplyr,plyr)

#read train data
X_train_data<-read.table("./train/x_train.txt")  #dim(X_train_data) 7352  561
Y_train_data<-read.table("./train/y_train.txt")  #dim(Y_train_data) 7352    1
subject_train<-read.table("./train/subject_train.txt") # dim(subject_train) 7352    1

#read test data
X_test_data<-read.table("./test/x_test.txt")  #dim(X_test_data) 2947 561
Y_test_data<-read.table("./test/y_test.txt")  #dim(Y_test_data) 2947 1
subject_test<-read.table("./test/subject_test.txt")  #dim(subject_train_test) 2947    1

# Step 1
# merge test and train data
Y_merged<-rbind(Y_train_data,Y_test_data)
X_merged<-rbind(X_train_data,X_test_data)
subject_merged<-rbind(subject_train,subject_test)

# Step 2
# get all feature names
#read features and activities' labels
activity_labels<-read.table("activity_labels.txt")
features_list<-read.table("features.txt") #In this data set: (8*3+9) signals *17 estimated variables =561
features_names<-features_list[[2]] #or features_names<-features_list$V2

#Extract the names of the columns with "mean()" and get their indecies
mean_columns<-features_names[grep("mean()",features_names,fixed=T)]
mean_columns_idx<-match(mean_columns,features_names)

#Extract the columns with "std" and get their indecies
std_columns<-features_names[grep("std",features_names,fixed=T)]
std_columns_idx<-match(std_columns,features_names)

#extract the Xdata corresponding to the found indecies
X_extract_mean_std<-X_merged[,c(mean_columns_idx,std_columns_idx)]

#Change the columns names from V1,V2 to the given names such as tBodyAcc-mean()-X in features.txt
colnames(X_extract_mean_std)<-features_names[c(mean_columns_idx,std_columns_idx)]

#Change the columns names for subject and activity
names(subject_merged)<-"subject"
names(Y_merged)<-"activity"

# Step 4
# edit the features names 
features_name_temp<-gsub("[[:punct:]]", "", names(X_extract_mean_std)) #remove special char
features_name_temp<-gsub("BodyBody", "Body", features_name_temp) #remove dublicate Body word
names(X_extract_mean_std)<-tolower(features_name_temp) #replace the features names with the edited ones

#bind the data to create new data frame 
all_col_df<-data.frame(cbind(subject_merged,Y_merged,X_extract_mean_std))
#find the mean for each feature based grouped by the subject and activity

# Step 5
tidy_data<-aggregate(all_col_df[,3:length(all_col_df)],by=list(subject=all_col_df$subject,activity=all_col_df$activity),FUN = "mean")
#arrange the data frame based on the subject number (1 to 30 here)
tidy_data_arranged<-arrange(tidy_data,subject)

#Another method
# tidy_data_df<-ddply(all_col_df,.(subject,activity),colMeans)
# tidy_data_df[[2]]<-activity_labels[[2]][tidy_data_df[[2]]]

# Step 3
# replace  activity numbers by activity labels
tidy_data_arranged[[2]]<-activity_labels[[2]][tidy_data_arranged[[2]]]

# write the data to a new file
write.table(tidy_data_arranged,"Samsung_mean_std_data.txt",row.names = F)
