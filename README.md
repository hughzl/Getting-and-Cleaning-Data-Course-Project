# Getting and Cleaning Data Course Project

# Introduction
The purpose of this project is to practise skills to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. The specific requirements to fulfill the training purpose are: 
1) a tidy data set
2) a link to a Github repository with R script for performing the analysis
3) a code book that describes the variables, the data, and any transformations or work to clean up the data called CodeBook.md
4) a README.md in the repo to explain how all of the scripts work and how they are connected

# Background
One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data used for this project represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 

Dataset information:
Human Activity Recognition (HAR) database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

For each observation it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

# Project tasks
1) Merges the training and the test sets to create one data set.
2) Extracts only the measurements on the mean and standard deviation for each measurement.
3) Uses descriptive activity names to name the activities in the data set
4) Appropriately labels the data set with descriptive variable names.
5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# Datafiles breakdown

<table>
    <tr>
        <th>File</th>
        <th>Description</th>
    </tr>
    <tr>
        <td valign=top>activity_labels.txt</td>
        <td>This file contains activity names and their corresponding ID. The IDs are used in the y_test.txt and y_train.txt files. </td>
    </tr>
    <tr>
        <td valign=top>features.txt</td>
        <td>This file lists the 561 different measurements taken from the smartphone. Each observation/row reprents each time a person measured for one of the six activities monitored during the experiment. Refer to my CodeBook.md.</td>
    </tr>
    <tr>
        <td valign=top>subject_test.txt</td>
        <td>This file contains subject (person) ID corresponding to each row of data in the X_test.txt file.  </td>
    </tr>
    <tr>
        <td valign=top>X_test.txt</td>
        <td> This file contains 561 measurements for each person in the test group on one of the six activities.</td>
    </tr>
    <tr>
        <td valign=top>y_test.txt</td>
        <td>This file contains activity IDs corresponding to each row of data in the X_test.txt file.</td>
    </tr>
    <tr>
        <td valign=top>subject_train.txt</td>
        <td>This file contains subject (person) IDs corresponding to each row of data in the X_train.txt file.  </td>
    </tr>
    <tr>
        <td valign=top>X_train.txt</td>
        <td> This file contains 561 measurements for each person in the training group on one of the six activities.</td>
    </tr>
    <tr>
        <td valign=top>y_train.txt</td>
        <td>This file contains activity IDs corresponding to each row of data in the X_train.txt file.</td>
    </tr>
</table>

# Data Processing
The basic idea is to combine the above data files into one single data frame in R and select out columns corresponding to mean and standard deviation measurements. Based on this, the average of each variable for each activity and each subject can be computed.
1) Download data zip file and unzip it to the working directory.
2) Read activity_labels and features files. Remove some unnecessary characters.
3) Read test data files. Select mean and std columns.
4) Combine subject IDs, activity labels and selected data into one file.
5) Read training data files. Select mean and std columns.
6) Combine subject IDs, activity labels and selected data into one file.
7) Merge test data and training data.
8) Group data by activity name and subject ID.
9) Calculate mean of each variable for each activity and each subject.
10) Generate a new table to store the final results.
