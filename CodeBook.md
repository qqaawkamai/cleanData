CodeBook
========================================================

This file will describe in detail all the transformations made to the data and the explanation of variables.

# Files that were Used #
1. X_train.txt (contains values of all the features)
2. Y_train.txt (activity code for user activity e.g. walking, standing etc)
3. subject_train.txt (subject id of user)
4. X_test.txt
5. Y_test.txt
6. subject_test.txt
7. features.txt (names of all the features)
8. activity_labels.txt (activity names for corresponding activity codes)

# Transformations #
1. X, Y and subject data were combined to get one large data set (stored in data_set)
2. From the features table, features with mean() or std() were kept (meanFreq were omitted). The features denoting direction (e.g. mean()-X) were kept because they could be valuable in determining a person's activity. There were 66 features in total.
3. The columns were then labeled with the activity names in activity_labels
4. A new column was attached to data_set explaining the type activity (e.g 1 = Walking, 2 = Walking Upstairs etc) performed by the subject.
5. Columns were rearranged so that the activity names column is beside the activity_code column (just so it's easier to read -- not necessary)
6. Average of each feature by subject and activity is stored in a new data set called tidyData. 
7. tidyData is written to "meansDataSet.txt"

# Features #
1. tBodyAcc-mean()-XYZ
2. tBodyAcc-std()-XYZ
3. tGravityAcc-mean()-XYZ
4. tGravityAcc-std()-XYZ
5. tBodyAccJerk-mean()-XYZ
6. tBodyAccJerk-std()-XYZ
7. tBodyGyro-mean()-XYZ
8. tBodyGyro-std()-XYZ
9. tBodyGyroJerk-mean()-XYZ
10. tBodyGyroJerk-std()-XYZ
11. tBodyAccMag-mean()
12. tBodyAccMag-std()
13. tGravityAccMag-mean()
14. tGravityAccMag-std()
15. tBodyAccJerkMag-mean()
16. tBodyAccJerkMag-std()
17. tBodyGyroMag-mean()
18. tBodyGyroMag-std()
19. tBodyGyroJerkMag-mean()
20. tBodyGyroJerkMag-std()
21. fBodyAcc-mean()-XYZ
22. fBodyAcc-std()-XYZ
23. fBodyAccJerk-mean()-XYZ
24. fBodyAccJerk-std()-XYZ
25. fBodyGyro-mean()-XYZ
26. fBodyGyro-std()-XYZ
27. fBodyAccMag-mean()
28. fBodyAccMag-std()
29. fBodyBodyAccJerkMag-mean()
30. fBodyBodyAccJerkMag-std()
31. fBodyBodyGyroMag-mean()
32. fBodyBodyGyroMag-std()
33. fBodyBodyGyroJerkMag-mean()
34. fBodyBodyGyroJerkMag-std()

## Explanation ##
1. mean() - mean of the feature
2. std() - standard deviation of the feature
3. XYZ - indicates that the variable in all 3 directions was included
4. 't' - time domain signals
5. 'f' - frequency domain signals 
6. Acc - acceleration
7. Mag - magnitude of Three dimensional vector
8. tBodyAcc-XYZ and tGravityAcc-XYZ - acquired from acceleration signals
9. tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ - acquired from linear acceleration and angular velocity

