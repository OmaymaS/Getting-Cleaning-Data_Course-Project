# Code Book for Getting and Cleaning Data (Course Project)

For the raw data, the features selected for thedatabase come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using  another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals and extracted by run_analysis.R: 	

* mean(): Mean value

* std(): Standard deviation

which gives (8*3+9)signals*2=66 variable.

**Notes: 

======

- Features are normalized and bounded within [-1,1].**

* `tbodyaccmeanx` 

       Mean of the time domain signal for body acceleration in the X axis

       Values [-1 to 1]       

* `tbodyaccmeany`  

       Mean of the time domain signal for body acceleration in the Y axis

       Values [-1 to 1]  

* `tbodyaccmeanz`

       Mean of the time domain signal for body acceleration in the Z axis

       Values [-1 to 1] 
       
* `tgravityaccmeanx` 
 
       Mean of the time domain signal for gravity acceleration in the X axis

       Values [-1 to 1]   
       
* `tgravityaccmeany`     
 
       Mean of the time domain signal for gravity acceleration in the Y axis

       Values [-1 to 1]  
       
* `tgravityaccmeanz`    
 
       Mean of the time domain signal for gravity acceleration in the Z axis

       Values [-1 to 1]  
       
*`tbodyaccjerkmeanx`    
 
       Mean of the time domain signal for body jerk in the X axis

       Values [-1 to 1]  

*`tbodyaccjerkmeany`  

       Mean of the time domain signal for body jerk in the Y axis

       Values [-1 to 1]  
 
*`tbodyaccjerkmeanz`    

       Mean of the time domain signal for body jerk in the Z axis

       Values [-1 to 1]  

* `tbodygyromeanx`  

       Mean of the time domain signal for gyroscope in the X axis

       Values [-1 to 1] 

* `tbodygyromeany`   

       Mean of the time domain signal for gyroscope in the Y axis

       Values [-1 to 1] 

* `tbodygyromeanz`     

       Mean of the time domain signal for gyroscope in the Z axis

       Values [-1 to 1] 

* `tbodygyrojerkmeanx` 

       Mean of the time domain signal for gyroscope jerk in the X axis

       Values [-1 to 1] 
 
* `tbodygyrojerkmeany`   

       Mean of the time domain signal for gyroscope jerk in the Y axis

       Values [-1 to 1] 
       
* `tbodygyrojerkmeanz`   

       Mean of the time domain signal for gyroscope jerk in the Z axis

       Values [-1 to 1] 
       
* `tbodyaccmagmean` 

       Mean of the time domain signal for body acceleration magnitude

       Values [-1 to 1] 

* `tgravityaccmagmean`  

       Mean of the time domain signal for gravity acceleration magnitude

       Values [-1 to 1] 
       
* `tbodyaccjerkmagmean` 

       Mean of the time domain signal for body acceleration jerk magnitude

       Values [-1 to 1] 

* `tbodygyromagmean` 

       Mean of the time domain signal for body gyroscope magnitude

       Values [-1 to 1] 

* `tbodygyrojerkmagmean` 
       
       Mean of the time domain signal for body gyroscope jerk magnitude

       Values [-1 to 1] 
       
* `fbodyaccmeanx`      

       ean of the frequency domain signal for body acceleration in X axis

       Values [-1 to 1] 
       
* `fbodyaccmeany`  

       Mean of the frequency domain signal for body acceleration in Y axis

       Values [-1 to 1] 

* `fbodyaccmeanz`    

       Mean of the frequency domain signal for body acceleration in Z axis

       Values [-1 to 1] 
  
*`fbodyaccjerkmeanx`    

       Mean of the frequency domain signal for body acceleration jerk in X axis

       Values [-1 to 1] 

* `fbodyaccjerkmeany` 

       Mean of the frequency domain signal for body acceleration jerk in Y axis

       Values [-1 to 1] 
       
* `fbodyaccjerkmeanz`   

       Mean of the frequency domain signal for body acceleration jerk in Z axis

       Values [-1 to 1] 
       
* `fbodygyromeanx`  

       Mean of the frequency domain signal for body gyroscope in X axis

       Values [-1 to 1] 

* `fbodygyromeany`

       Mean of the frequency domain signal for body gyroscope in Y axis

       Values [-1 to 1]  
       
* `fbodygyromeanz`  

       Mean of the frequency domain signal for body gyroscope in Z axis

       Values [-1 to 1]  
       
* `fbodyaccmagmean`  

       Mean of the frequency domain signal for body gyroscope in Z axis

       Values [-1 to 1]  
       
* `fbodyaccjerkmagmean`  

       Mean of the frequency domain signal for body acceleration jerk

       Values [-1 to 1]  
       
* `fbodygyromagmean`   

       Mean of the frequency domain signal for body gyroscope magnitude

       Values [-1 to 1]  
       
* `fbodygyrojerkmagmean`

       Mean of the frequency domain signal for body gyroscope jerk magnitude

       Values [-1 to 1]  
       
* `tbodyaccstdx`        

       Standard deviation of the time domain signal for body acceleration in X axis

       Values [-1 to 1]  
       
* `tbodyaccstdy`         

       Standard deviation of the time domain signal for body acceleration in Y axis

       Values [-1 to 1]  
       
* `tbodyaccstdz`         

       Standard deviation of the time domain signal for body acceleration in Z axis

       Values [-1 to 1]  
     
* `tgravityaccstdx`      

       Standard deviation of the time domain signal for gravity acceleration in X axis

       Values [-1 to 1]  
     
* `tgravityaccstdy`  

       Standard deviation of the time domain signal for gravity acceleration in Y axis

       Values [-1 to 1]  
   
* `tgravityaccstdz` 

       Standard deviation of the time domain signal for gravity acceleration in Z axis

       Values [-1 to 1]  

* `tbodyaccjerkstdx`     

       Standard deviation of the time domain signal for body acceleration jerk in X axis

       Values [-1 to 1]  

* `tbodyaccjerkstdy`    

       Standard deviation of the time domain signal for body acceleration jerk in Y axis

       Values [-1 to 1]  

* `tbodyaccjerkstdz`    

       Standard deviation of the time domain signal for body acceleration jerk in Z axis

       Values [-1 to 1]  

* `tbodygyrostdx`   
  
       Standard deviation of the time domain signal for gyroscope in X axis

       Values [-1 to 1]  
  
* `tbodygyrostdy`        
  
       Standard deviation of the time domain signal for gyroscope in Y axis

       Values [-1 to 1]  
  
* `tbodygyrostdz`        
  
       Standard deviation of the time domain signal for gyroscope in Z axis

       Values [-1 to 1]  
       
* `tbodygyrojerkstdx`    
  
       Standard deviation of the time domain signal for gyroscope jerk in X axis

       Values [-1 to 1]  
       
* `tbodygyrojerkstdy`    
  
       Standard deviation of the time domain signal for gyroscope jerk in Y axis

       Values [-1 to 1]  
       
* `tbodygyrojerkstdz`  
   
       Standard deviation of the time domain signal for gyroscope jerk in Z axis

       Values [-1 to 1]  
       
* `tbodyaccmagstd` 

       Standard deviation of the time domain signal for acceleration magnitude

       Values [-1 to 1]  
      
* `tgravityaccmagstd`    

       Standard deviation of the time domain signal for gravity acceleration magnitude

       Values [-1 to 1]  
      
* `tbodyaccjerkmagstd`   

       Standard deviation of the time domain signal for gravity acceleration magnitude

       Values [-1 to 1]  
    
* `tbodygyromagstd`      

       Standard deviation of the time signal for body gyroscope magnitude
       
       Values [-1 to 1]  
    
* `tbodygyrojerkmagstd` 

       Standard deviation of the time signal for the body gyroscope magnitude
       
       Values [-1 to 1] 
       
* `fbodyaccstdx`        

       Standard deviation of the frequency signal for the acceleration in the X axis
       
       Values [-1 to 1] 
       
* `fbodyaccstdy`        

       Standard deviation of the frequency signal for the body acceleration in the Y axis
       
       Values [-1 to 1] 
       
* `fbodyaccstdz`         

       Standard deviation of the frequency signal for the body acceleration in the Z axis
       
       Values [-1 to 1] 
       
* `fbodyaccjerkstdx`   

       Standard deviation of the frequency signal for the body acceleration jerk  in the X axis
       
       Values [-1 to 1] 

* `fbodyaccjerkstdy`    

       Standard deviation of the frequency signal for the body acceleration jerk in the Y axis
       
       Values [-1 to 1] 
       
* `fbodyaccjerkstdz`    

       Standard deviation of the frequency signal for the body acceleration jerk in the Z axis
       
       Values [-1 to 1] 
       
* `fbodygyrostdx`      

       Standard deviation of the frequency signal for the body gyroscope in the X axis
       
       Values [-1 to 1] 

* `fbodygyrostdy`        

       Standard deviation of the frequency signal for the body gyroscope in the Y axis
       
       Values [-1 to 1] 
       
* `fbodygyrostdz`       

       Standard deviation of the frequency signal for the body gyroscope in the Z axis
       
       Values [-1 to 1] 
       
* `fbodyaccmagstd` 

       Standard deviation of the frequency signal for the body acceleration magnitude 
       
       Values [-1 to 1] 
       
* `fbodyaccjerkmagstd`   

       Standard deviation of the frequency signal for the body acceleration jerk magnitude 
       
       Values [-1 to 1] 

* `fbodygyromagstd`      

       Standard deviation of the frequency signal for the body gyroscope magnitude 
       
       Values [-1 to 1] 
       
* `fbodygyrojerkmagstd` 

       Standard deviation of the frequency signal for the body gyroscope jerk magnitude 
       
       Values [-1 to 1] 
