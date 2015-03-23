# Codebook for run_analysis.R
The following describes data set for getdata-012 course project.

See the accompanying README.md for instructions for setup and how to run the analysis tool.



## Delimitation:   The output written by the analyser is a simple aggregate observation delimited by line, and variable of each observation delimited by space character " "


## Mean Aggregate Output Data Set

These following are the aggregate grouping for means from observation data set

Variable Name           Position        Description
subject_id              1               This is the ID of the subject (person under test)
activity                2               

The following are the aggreate means of observed feature variables across the groupings (the descriptions are below for individual mean/std feature measurements):

Variable Name                   Position

mean(TBODYACCYMEAN)        		3
mean(TBODYACCZMEAN)			4
mean(TBODYACCXSTD)			5 
mean(TBODYACCYSTD)			6
mean(TBODYACCZSTD)			7
mean(TGRAVITYACCXMEAN)		8
mean(TGRAVITYACCYMEAN)		9
mean(TGRAVITYACCZMEAN)		10
mean(TGRAVITYACCXSTD)		11
mean(TGRAVITYACCYSTD)		12
mean(TGRAVITYACCZSTD)		13
mean(TBODYACCJERKXMEAN)     14  
mean(TBODYACCJERKYMEAN)		15
mean(TBODYACCJERKZMEAN)		16
mean(TBODYACCJERKXSTD)		17
mean(TBODYACCJERKYSTD)		18
mean(TBODYACCJERKZSTD)		19
mean(TBODYGYROXMEAN)		20
mean(TBODYGYROYMEAN)		21
mean(TBODYGYROZMEAN)		22
mean(TBODYGYROXSTD)			23
mean(TBODYGYROYSTD)			24
mean(TBODYGYROZSTD)			25
mean(TBODYGYROJERKXMEAN)	26
mean(TBODYGYROJERKYMEAN)	27
mean(TBODYGYROJERKZMEAN)	28
mean(TBODYGYROJERKXSTD) 	29
mean(TBODYGYROJERKYSTD)		30
mean(TBODYGYROJERKZSTD)		31
mean(TBODYACCMAGMEAN)		32
mean(TBODYACCMAGSTD)		33
mean(TGRAVITYACCMAGMEAN)	34
mean(TGRAVITYACCMAGSTD)		35
mean(TBODYACCJERKMAGMEAN)	36
mean(TBODYACCJERKMAGSTD)	37
mean(TBODYGYROMAGMEAN)		38
mean(TBODYGYROMAGSTD)		39
mean(TBODYGYROJERKMAGMEAN)	40
mean(TBODYGYROJERKMAGSTD)	41
mean(FBODYACCXMEAN)			42
mean(FBODYACCYMEAN)			43
mean(FBODYACCZMEAN)			44
mean(FBODYACCXSTD)			45
mean(FBODYACCYSTD)			46
mean(FBODYACCZSTD)			47
mean(FBODYACCJERKXMEAN)		48
mean(FBODYACCJERKYMEAN)		49
mean(FBODYACCJERKZMEAN)		50
mean(FBODYACCJERKXSTD)		51
mean(FBODYACCJERKYSTD)		52
mean(FBODYACCJERKZSTD)		53
mean(FBODYGYROXMEAN)		54
mean(FBODYGYROYMEAN)		55
mean(FBODYGYROZMEAN)		56
mean(FBODYACCMAGMEAN)		57
mean(FBODYACCMAGSTD)		58
mean(FBODYBODYACCJERKMAGMEAN)	59
mean(FBODYBODYACCJERKMAGSTD)	60
mean(FBODYBODYGYROMAGMEAN)	61
mean(FBODYBODYGYROMAGSTD)	62
mean(FBODYBODYGYROJERKMAGMEAN)	63
mean(FBODYBODYGYROJERKMAGSTD)	64


## Observation Dataset (observationData)

Variable        Position	Description (4->69 are originating Variable in source dataset)
subject_id      1       Subject under observation
activity_id     2       Key identifier for Activity variable
activity        3       User friendly activity label
TBODYACCXMEAN	4	tBodyAcc-mean()-X
TBODYACCYMEAN	5	tBodyAcc-mean()-Y
TBODYACCZMEAN	6	tBodyAcc-mean()-Z
TBODYACCXSTD	7	tBodyAcc-std()-X
TBODYACCYSTD	8	tBodyAcc-std()-Y
TBODYACCZSTD	9	tBodyAcc-std()-Z
TGRAVITYACCXMEAN	10	tGravityAcc-mean()-X
TGRAVITYACCYMEAN	11	tGravityAcc-mean()-Y
TGRAVITYACCZMEAN	12	tGravityAcc-mean()-Z
TGRAVITYACCXSTD	13	tGravityAcc-std()-X
TGRAVITYACCYSTD	14	tGravityAcc-std()-Y
TGRAVITYACCZSTD	15	tGravityAcc-std()-Z
TBODYACCJERKXMEAN	16	tBodyAccJerk-mean()-X
TBODYACCJERKYMEAN	17	tBodyAccJerk-mean()-Y
TBODYACCJERKZMEAN	18	tBodyAccJerk-mean()-Z
TBODYACCJERKXSTD	19	tBodyAccJerk-std()-X
TBODYACCJERKYSTD	20	tBodyAccJerk-std()-Y
TBODYACCJERKZSTD	21	tBodyAccJerk-std()-Z
TBODYGYROXMEAN	22	tBodyGyro-mean()-X
TBODYGYROYMEAN	23	tBodyGyro-mean()-Y
TBODYGYROZMEAN	24	tBodyGyro-mean()-Z
TBODYGYROXSTD	25	tBodyGyro-std()-X
TBODYGYROYSTD	26	tBodyGyro-std()-Y
TBODYGYROZSTD	27	tBodyGyro-std()-Z
TBODYGYROJERKXMEAN	28	tBodyGyroJerk-mean()-X
TBODYGYROJERKYMEAN	29	tBodyGyroJerk-mean()-Y
TBODYGYROJERKZMEAN	30	tBodyGyroJerk-mean()-Z
TBODYGYROJERKXSTD	31	tBodyGyroJerk-std()-X
TBODYGYROJERKYSTD	32	tBodyGyroJerk-std()-Y
TBODYGYROJERKZSTD	33	tBodyGyroJerk-std()-Z
TBODYACCMAGMEAN	34	tBodyAccMag-mean()
TBODYACCMAGSTD	35	tBodyAccMag-std()
TGRAVITYACCMAGMEAN	36	tGravityAccMag-mean()
TGRAVITYACCMAGSTD	37	tGravityAccMag-std()
TBODYACCJERKMAGMEAN	38	tBodyAccJerkMag-mean()
TBODYACCJERKMAGSTD	39	tBodyAccJerkMag-std()
TBODYGYROMAGMEAN	40	tBodyGyroMag-mean()
TBODYGYROMAGSTD	41	tBodyGyroMag-std()
TBODYGYROJERKMAGMEAN	42	tBodyGyroJerkMag-mean()
TBODYGYROJERKMAGSTD	43	tBodyGyroJerkMag-std()
FBODYACCXMEAN	44	fBodyAcc-mean()-X
FBODYACCYMEAN	45	fBodyAcc-mean()-Y
FBODYACCZMEAN	46	fBodyAcc-mean()-Z
FBODYACCXSTD	47	fBodyAcc-std()-X
FBODYACCYSTD	48	fBodyAcc-std()-Y
FBODYACCZSTD	49	fBodyAcc-std()-Z
FBODYACCJERKXMEAN	50	fBodyAccJerk-mean()-X
FBODYACCJERKYMEAN	51	fBodyAccJerk-mean()-Y
FBODYACCJERKZMEAN	52	fBodyAccJerk-mean()-Z
FBODYACCJERKXSTD	53	fBodyAccJerk-std()-X
FBODYACCJERKYSTD	54	fBodyAccJerk-std()-Y
FBODYACCJERKZSTD	55	fBodyAccJerk-std()-Z
FBODYGYROXMEAN	56	fBodyGyro-mean()-X
FBODYGYROYMEAN	57	fBodyGyro-mean()-Y
FBODYGYROZMEAN	58	fBodyGyro-mean()-Z
FBODYGYROXMEAN	59	fBodyGyro-std()-X
FBODYGYROYMEAN	60	fBodyGyro-std()-Y
FBODYGYROZMEAN	61	fBodyGyro-std()-Z
FBODYACCMAGMEAN	62	fBodyAccMag-mean()
FBODYACCMAGSTD	63	fBodyAccMag-std()
FBODYBODYACCJERKMAGMEAN	64	fBodyBodyAccJerkMag-mean()
FBODYBODYACCJERKMAGSTD	65	fBodyBodyAccJerkMag-std()
FBODYBODYGYROMAGMEAN	66	fBodyBodyGyroMag-mean()
FBODYBODYGYROMAGSTD	67	fBodyBodyGyroMag-std()
FBODYBODYGYROJERKMAGMEAN	68	fBodyBodyGyroJerkMag-mean()
FBODYBODYGYROJERKMAGSTD	69	fBodyBodyGyroJerkMag-std()