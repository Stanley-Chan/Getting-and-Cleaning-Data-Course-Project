#Getting and Cleaning Data - Code Book
##Variables

###Activity Labels
1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

###Features Labels
1. "timeBodyAccMeanX"                
2. "timeBodyAccMeanY"                
3. "timeBodyAccMeanZ"                
4. "timeBodyAccStdDevX"             
5. "timeBodyAccStdDevY"              
6. "timeBodyAccStdDevZ"              
7. "timeGravityAccMeanX"             
8. "timeGravityAccMeanY"            
9. "timeGravityAccMeanZ"             
10. "timeGravityAccStdDevX"           
11. "timeGravityAccStdDevY"           
12. "timeGravityAccStdDevZ"          
13. "timeBodyAccJerkMeanX"            
14. "timeBodyAccJerkMeanY"            
15. "timeBodyAccJerkMeanZ"            
16. "timeBodyAccJerkStdDevX"         
17. "timeBodyAccJerkStdDevY"         
18. "timeBodyAccJerkStdDevZ"          
19. "timeBodyGyroMeanX"               
20. "timeBodyGyroMeanY"              
21. "timeBodyGyroMeanZ"               
22. "timeBodyGyroStdDevX"             
23. "timeBodyGyroStdDevY"             
24. "timeBodyGyroStdDevZ"            
25. "timeBodyGyroJerkMeanX"           
26. "timeBodyGyroJerkMeanY"           
27. "timeBodyGyroJerkMeanZ"           
28. "timeBodyGyroJerkStdDevX"        
29. "timeBodyGyroJerkStdDevY"         
30. "timeBodyGyroJerkStdDevZ"         
31. "timeBodyAccMagMean"              
32. "timeBodyAccMagStdDev"           
33. "timeGravityAccMagMean"           
34. "timeGravityAccMagStdDev"         
35. "timeBodyAccJerkMagMean"          
36. "timeBodyAccJerkMagStdDev"       
37. "timeBodyGyroMagMean"             
38. "timeBodyGyroMagStdDev"           
39. "timeBodyGyroJerkMagMean"         
40. "timeBodyGyroJerkMagStdDev"      
41. "freqBodyAccMeanX"                
42. "freqBodyAccMeanY"                
43. "freqBodyAccMeanZ"                
44. "freqBodyAccStdDevX"             
45. "freqBodyAccStdDevY"              
46. "freqBodyAccStdDevZ"              
47. "freqBodyAccMeanFreqX"            
48. "freqBodyAccMeanFreqY"           
49. "freqBodyAccMeanFreqZ"            
50. "freqBodyAccJerkMeanX"            
51. "freqBodyAccJerkMeanY"            
52. "freqBodyAccJerkMeanZ"           
53. "freqBodyAccJerkStdDevX"          
54. "freqBodyAccJerkStdDevY"          
55. "freqBodyAccJerkStdDevZ"          
56. "freqBodyAccJerkMeanFreqX"       
57. "freqBodyAccJerkMeanFreqY"        
58. "freqBodyAccJerkMeanFreqZ"        
59. "freqBodyGyroMeanX"               
60. "freqBodyGyroMeanY"              
61. "freqBodyGyroMeanZ"               
62. "freqBodyGyroStdDevX"             
63. "freqBodyGyroStdDevY"             
64. "freqBodyGyroStdDevZ"            
65. "freqBodyGyroMeanFreqX"           
66. "freqBodyGyroMeanFreqY"           
67. "freqBodyGyroMeanFreqZ"           
68. "freqBodyAccMagMean"             
69. "freqBodyAccMagStdDev"            
70. "freqBodyAccMagMeanFreq"          
71. "freqBodyBodyAccJerkMagMean"      
72. "freqBodyBodyAccJerkMagStdDev"   
73. "freqBodyBodyAccJerkMagMeanFreq"  
74. "freqBodyBodyGyroMagMean"         
75. "freqBodyBodyGyroMagStdDev"       
76. "freqBodyBodyGyroMagMeanFreq"    
77. "freqBodyBodyGyroJerkMagMean"     
78. "freqBodyBodyGyroJerkMagStdDev"   
79. "freqBodyBodyGyroJerkMagMeanFreq"

###Train & Test data Variables
1. subject_train & Subject_test - Subject who perform the activities from range number 1-30
2. Train_labels & test_labels - Types of activities the subject performed
3. Train_results & test_results - All the test measurements from each of the test cases / patterns

## Getting and Cleaning Data - Analysis Work
Steps 1 : Understand the project requirements.

Steps 2 : Extract and download the data from the data source.

Steps 3 : Download all the data and load into each of the dataset.

Steps 4 : Analyze all the dataset by using head(), names(), summary() and etc.

Steps 5 : Define criteria to filter data and extract data by using grep.

Steps 6 : Naming all the columns / variables with descriptive variable names by using gsub.

Steps 7 : Look into the data columns using names(). Define which function to use (merge, cbind, rbind and etc.) to merge the dataset.

Steps 8 : Define which function to be use (tidyr, reshape2 and etc) to tidy the data according to the rules

  * Each variable in the data set is placed in its own column.
  * Each observation is placed in its own row.
  * Each value is placed in its own cell.

