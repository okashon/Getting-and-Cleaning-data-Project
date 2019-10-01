########GETTING AND CLEANING DATA COURSE PROJECT########

library(dplyr)

###READING DATA###

files_path = file.path("C:/Users/arturo/Desktop/curso de coursera/Data Science/getting and cleaning data/Projecto/UCI HAR Dataset/")

##TEST SET
x_test = read.table(file.path(files_path,"test","x_test.txt"),header = FALSE)
y_test = read.table(file.path(files_path,"test","y_test.txt"),header = FALSE)
subject_test = read.table(file.path(files_path,"test","subject_test.txt"),header = FALSE)
##TRAIN SET
x_train = read.table(file.path(files_path,"train","x_train.txt"),header = FALSE)
y_train = read.table(file.path(files_path,"train","y_train.txt"),header = FALSE)
subject_train = read.table(file.path(files_path,"train","subject_train.txt"),header = FALSE)

####MERGING DATA SETS INTO ONE DATA SET####

##CONCATENATE BY ROWS##

Features = rbind(x_test,x_train)
Activity = rbind(y_test,y_train)
subject = rbind(subject_test,subject_train)

##SET NAMES TO VARIABLES

names(Activity) = c("Activity")
names(subject) = c("subject")
featuresnames = read.table(file.path(files_path,"features.txt"),header = FALSE)
names(Features) = featuresnames$V2

##MERGED DATA##

combine = cbind(subject,Activity)
merged_data = cbind(combine,Features)

##VIEW THE DATA##

View(merged_data)

####SUBSETTING DATA####

subfeaturenames = featuresnames$V2[grep("mean\\(\\)|std\\(\\)",featuresnames$V2)]
nameselected = c(as.character(subfeaturenames),"subject","Activity")
Subdata = subset(merged_data,select = nameselected)

##CHEKING THE STRUCTURE OF THE DATA##

str(Subdata)

####NAMING ACTIVITIES IN THE DATA SET####

activity_labels = read.table(file.path(files_path,"activity_labels.txt"),header = FALSE)

##SET THE NAMES OF ACTIVITES##
Subdata$activity = activity_labels[Subdata$activity,2]

##SET NAMES FOR DESCRIPTIVE VARIABLES##

names(Subdata)[2] = "activity"
names(Subdata) = gsub("Acc","Accelerometer",names(Subdata))
names(Subdata) = gsub("Gyro","Gyroscope",names(Subdata))
names(Subdata) = gsub("BodyBody","Body",names(Subdata))
names(Subdata) = gsub("Mag","Magnitude",names(Subdata))
names(Subdata) = gsub("^t","Time",names(Subdata))
names(Subdata) = gsub("^f","Frequency",names(Subdata))
names(Subdata) = gsub("tBody","TimeBody",names(Subdata))
names(Subdata) = gsub("-mean()","Mean",names(Subdata),ignore.case = TRUE)
names(Subdata) = gsub("-std()","STD",names(Subdata),ignore.case = TRUE)
names(Subdata) = gsub("-freq()","FREQ",names(Subdata),ignore.case = TRUE)
names(Subdata) = gsub("angle","Angle",names(Subdata))
names(Subdata) = gsub("gravity","Gravity",names(Subdata))

##CREATING A SECOND, INDEPENDENT TIDY DATA SET WITH THE AVERAGE
##OF EACH ACTIVITY AND EACH SUBJECT

Tidy_data = aggregate(. ~subject + activity, Subdata, mean)
Tidy_data = Tidy_data[order(Tidy_data$subject,Tidy_data$activity),]
write.table(Tidy_data,"Tidy_data.txt",row.names = FALSE)

#####FINAL CHECK####

str(Tidy_data)
View(Tidy_data)

############################THE END##################################