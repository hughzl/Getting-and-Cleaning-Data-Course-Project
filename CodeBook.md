# Summary
This codebook provides explanations to all variables in the data files as well as all data files generated during data processing.

# Variables
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean: Mean value
std: Standard deviation

# Data frames
<table>
    <tr>
        <th>Data frame</th>
        <th>Description</th>
    </tr>
    <tr>
        <td>act_labels</td>
        <td>read in the activity_labels file</td>
    </tr>
    <tr>
        <td>features</td>
        <td>read in the featues file </td>
    </tr>
    <tr>
        <td>mean_ind, std_ind</td>
        <td>indexes of columns with mean and standard deviation values </td>
    </tr>
    <tr>
        <td>test_data</td>
        <td>read in the X_test file</td>
    </tr>
    <tr>
        <td>test_labels</td>
        <td>read in the y_test file</td>
    </tr>
    <tr>
        <td>test_subjects</td>
        <td>read in the subject_test file</td>
    </tr>
    <tr>
        <td>test_mean_std</td>
        <td>selected mean and std columns</td>
    </tr>
    <tr>
        <td>test_final</td>
        <td>combined test_subjects, test_labels and test_mean_std</td>
    </tr>
    <tr>
        <td>train_data</td>
        <td>read in the X_train file</td>
    </tr>
    <tr>
        <td>train_labels</td>
        <td>read in the y_test file</td>
    </tr>
    <tr>
        <td>train_subjects</td>
        <td>read in the subject_test file</td>
    </tr>
    <tr>
        <td>train_mean_std</td>
        <td>selected mean and std columns</td>
    </tr>
    <tr>
        <td>train_final</td>
        <td>combined train_subjects, train_labels and train_mean_std</td>
    </tr>
    <tr>
        <td>all_data</td>
        <td>combined test_final and train_final</td>
    </tr>
    <tr>
        <td>all_labeled</td>
        <td>all_data with activity labels</td>
    </tr>
    <tr>
        <td>newdf</td>
        <td>a new table to store mean values for every activity and every subject</td>
    </tr>
</table>
