cleanData
=========

# Files in cleanData #
1. run_analysis.R
2. CodeBook.md
3. README.md

# run_analysis.R #

1. Merges the training and test datasets
2. Extracts key features (those having mean() and std())
3. Appropriately name columns
4. Adds an activity column to describe the activity (stored in variable data_set)
5. A tidy data set is created that reports the mean grouped by subject and activity
6. Stored in variable tidyData and file downloaded to "meansDataSet.txt"

# CodeBook.md #

Explains the variables, data transformations and why certain variables were chosen. Also includes more detailed explanation of the run_analysis code.

# Running run_analysis.R #
1. Unzip the UCI Har Dataset in your working directory: [link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
2. Download run_analysis.R to your working directory
3. Run all the commands with :

  ```{r}
  source("run_analysis.R")
  ```
  * This would ultimately download the tidy summary data "meansDataSet.txt" into your working directory. Also note that this will load all the necessary files into the environment and may take some time to run on your machine.
  
