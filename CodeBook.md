## Variables in the script runanalysis.R
* features: placeholder for features.txt file. using especially the second column (for labelling in the datasets)
* ActivityLabels: Placeholder for activity_labels.txt. Used for mapping acticity numbers to activity names
* x_test/x_train: used for storing the measurements in both data sets (test and training respectively)
* y_test/y_train: used for storing the correspondign activity number in both data sets (test and training respectively)
* subject_test/subject_train: used for storing the subject identifier in both data sets (test and training respectively)
* main_merge: for storing the combined data set
* name_them: for storing the human readable column name labels related to the combined data set (previously assigned using colnames
* Pref_few: selection of the column names for the part of the script where opnly mean and stdd related columns need to be selected
* me_stdd_extract: the combined data set table  with only the selected columns on mean and standard deviation measurements
* extract_with_names: the same table as me_stdd_extract, however, with activity number replaced by the name from ActivityLabels
* Keurig, Keurig.txt: the variable, and the corresponding file on the attempt to tidy the data set.
