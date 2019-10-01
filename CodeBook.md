---
title: "Codebook.md"
author: "Jorge carrión"
date: "30/09/2019"
---

## Project Description
This is a small project for the getting and cleaning data course

##Study design and data processing

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

###Collection of the raw data

The data was obtained from here

*https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip*

###For each record it is provided
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

###Data files
- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

###Tidy data

Tidy_data <- read.table("Tidy_data.txt", HEAD = TRUE)

##Description of the variables in the Tidy_data.txt file
General description of the file including:
 - Dimensions: [1] 180 68
 
 - Variables present in the dataset:
 		-Identifiers: 
			+ Subject: THe ID for the subject participating in the experiment . Ranges from 1 to 30
			+ Activity: Is the type of activity performed by the subject ofr which the measurements were taken: Walking, Walking_upstairs, walking_downstairs, sitting, standing and laying.
			
		-Measurement variables: The remaining columns are measurements taken by the average for smartphone of each variable for each activity and each subject.
		
			+TimeBodyAccelerometerMeanX
			+TimeBodyAccelerometerMeanY
			+TimeBodyAccelerometerMeanZ
			+TimeGravityAccelerometerMeanX
			+TimeGravityAccelerometerMeanY
			+TimeGravityAccelerometerMeanZ
			+TimeBodyAccelerometerJerkMeanX
			+TimeBodyAccelerometerJerkMeanY
			+TimeBodyAccelerometerJerkMeanZ
			+TimeBodyGyroscopeMeanX
			+TimeBodyGyroscopeMeanY
			+TimeBodyGyroscopeMeanZ
			+TimeBodyGyroscopeJerkMeanX
			+TimeBodyGyroscopeJerkMeanY
			+TimeBodyGyroscopeJerkMeanZ
			+TimeBodyAccelerometerMagnitudeMean
			+TimeGravityAccelerometerMagnitudeMean
			+TimeBodyAccelerometerJerkMagnitudeMean
			+TimeBodyGyroscopeMagnitudeMean
			+TimeBodyGyroscopeJerkMagnitudeMean
			+FrequencyBodyAccelerometerMeanX
			+FrequencyBodyAccelerometerMeanY
			+FrequencyBodyAccelerometerMeanZ
			+FrequencyBodyAccelerometerJerkMeanX
			+FrequencyBodyAccelerometerJerkMeanY
			+FrequencyBodyAccelerometerJerkMeanZ
			+FrequencyBodyGyroscopeMeanX
			+FrequencyBodyGyroscopeMeanY
			+FrequencyBodyGyroscopeMeanZ
			+FrequencyBodyAccelerometerMagnitudeMean
			+FrequencyBodyAccelerometerJerkMagnitudeMean
			+FrequencyBodyGyroscopeMagnitudeMean
			+FrequencyBodyGyroscopeJerkMagnitudeMean
			+TimeBodyAccelerometerStdX
			+TimeBodyAccelerometerStdY
			+TimeBodyAccelerometerStdZ
			+TimeGravityAccelerometerStdX
			+TimeGravityAccelerometerStdY
			+TimeGravityAccelerometerStdZ
			+TimeBodyAccelerometerJerkStdX
			+TimeBodyAccelerometerJerkStdY
			+TimeBodyAccelerometerJerkStdZ
			+TimeBodyGyroscopeStdX
			+TimeBodyGyroscopeStdY
			+TimeBodyGyroscopeStdZ
			+TimeBodyGyroscopeJerkStdX
			+TimeBodyGyroscopeJerkStdY
			+TimeBodyGyroscopeJerkStdZ
			+TimeBodyAccelerometerMagnitudeStd
			+TimeGravityAccelerometerMagnitudeStd
			+TimeBodyAccelerometerJerkMagnitudeStd
			+TimeBodyGyroscopeMagnitudeStd
			+TimeBodyGyroscopeJerkMagnitudeStd
			+FrequencyBodyAccelerometerStdX
			+FrequencyBodyAccelerometerStdY
			+FrequencyBodyAccelerometerStdZ
			+FrequencyBodyAccelerometerJerkStdX
			+FrequencyBodyAccelerometerJerkStdY
			+FrequencyBodyAccelerometerJerkStdZ
			+FrequencyBodyGyroscopeStdX
			+FrequencyBodyGyroscopeStdY
			+FrequencyBodyGyroscopeStdZ
			+FrequencyBodyAccelerometerMagnitudeStd
			+FrequencyBodyAccelerometerJerkMagnitudeStd
			+FrequencyBodyGyroscopeMagnitudeStd
			+FrequencyBodyGyroscopeJerkMagnitudeStd

##Sources
Jillian Cahill - https://rpubs.com/jilliancahill/ActivityDataCodeBook

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
