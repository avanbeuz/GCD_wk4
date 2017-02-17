# run_analysis.R
#this script is developed for a coursera online course
#feb 2017, AvB
#
# the script assumes the course data set is already unzipped and available 
# at ./projectdata/UCI HAR Dataset and subdirectories

# merge the data
  #Do assign data to variables
  #read the features.txt
  features <- read.table('./projectdata/UCI HAR Dataset/features.txt')
  #read the activity.txt
  activityLabels = read.table('./projectdata/UCI HAR Dataset/activity_labels.txt')
  #Read part one
  x_test <- read.table("./projectdata/UCI HAR Dataset/test/X_test.txt")
  y_test <- read.table("./projectdata/UCI HAR Dataset/test/y_test.txt")
  subject_test <- read.table("./projectdata/UCI HAR Dataset/test/subject_test.txt")
  #Read part 2
  x_train <- read.table("./projectdata/UCI HAR Dataset/train/X_train.txt")
  y_train <- read.table("./projectdata/UCI HAR Dataset/train/y_train.txt")
  subject_train <- read.table("./projectdata/UCI HAR Dataset/train/subject_train.txt")
  
  #merge the corresponding sets
  x_merge <- rbind (x_test, x_train)
  y_merge <- rbind (y_test, y_train)
  subject_merge <- rbind (subject_test,subject_train)
  main_merge <- cbind (y_merge, subject_merge, x_merge)
   
#assign the nice names to the columns
  colnames(activityLabels) <- c("activity_number","activity")
  colnames (main_merge) <- c("activity_number", "subject_number", as.character(features [,2]))
  
#Section: only the measurements on the mean and standard deviation for each measurement
  name_them <- colnames(main_merge)
  Pref_few <- (grepl("activity_number" , name_them) | 
                 grepl("subject_number" , name_them) | 
                 grepl("mean.." , name_them) | 
                 grepl("std.." , name_them) )

  me_stdd_extract <- main_merge[ , Pref_few == TRUE]
  
#Using descriptive activity names to name the activities in the extracted mean and stdd set
  extract_with_names  <- merge(me_stdd_extract, activityLabels,
                                by='activity_number',
                                all.x=TRUE)
# delivering it in a second tidy set
  Keurig <- aggregate(. ~subject_number + activity_number, extract_with_names, mean)
  Keurig <- Keurig[order(Keurig$subject_number, Keurig$activity_number),]
  write.table(Keurig, "Keurig.txt", row.name=FALSE)
  

  
  