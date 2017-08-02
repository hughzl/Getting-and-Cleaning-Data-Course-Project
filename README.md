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
        <td>File containing six rows of data, where each row contains an activity identifier and an activity description, a text label to associate with the y_train.txt and y_test.txt files. The numeric identifier and text labels are separated by a blank space. The activity label words are delmited by an underscore when an activity contains more than a single word. </td>
    </tr>
    <tr>
        <td valign=top>features.txt</td>
        <td>File listing the 561 different measurements taken from the smartphone each time a person was measured for one of the six activities monitored during the experiment. Data is listed in one row per measurement, where the line number in the file is the assumed key to match against the test and training data files. </td>
    </tr>
    <tr>
        <td valign=top>subject_test.txt</td>
        <td>File containing one column of data that identifies the subject (i.e. person) corresponding to each row of data in the test measurement X_test.txt file.  </td>
    </tr>
    <tr>
        <td valign=top>X_test.txt</td>
        <td> File containing 561 measurements for each observed experiment on one of the six activities for a specific person.</td>
    </tr>
    <tr>
        <td valign=top>y_test.txt</td>
        <td>File containing one column of data that identifies the activity corresponding to each row of data in the test measurement X_test.txt file.</td>
    </tr>
    <tr>
        <td valign=top>subject_train.txt</td>
        <td>File containing one column of data that identifies the subject (i.e. person) corresponding to each row of data in the test measurement X_train.txt file.  </td>
    </tr>
    <tr>
        <td valign=top>X_train.txt</td>
        <td> File containing 561 measurements for each observed experiment on one of the six activities for a specific person.</td>
    </tr>
    <tr>
        <td valign=top>y_train.txt</td>
        <td>File containing one column of data that identifies the activity corresponding to each row of data in the test measurement X_train.txt file.</td>
    </tr>
</table>
