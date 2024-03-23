#MATRIX - data is organized, kapag malinis na yung data

freq <- c(10, 22, 15, 8, 20, 10, 8, 9)
row_names <- c("High School", "College", "Masteral", "PhD")
column_names <- c("Female", "Male")



#matrix_name <- matrix(vector, nrow=n, ncol=n, byrow=T/F, dimnames=list(row_names, column_names))
#byrow= , (True if data are set by row, and false if by col)

educational_attainment <- matrix(freq, nrow=4, ncol=2, byrow=T, dimnames=list(row_names, column_names))


freq_1 <- 1:30
row_names1 <- c("A", "B", "C", "D", "E", "F")
column_names1 <- c("Blue", "Red", "White", "Green", "Yellow")
matrix_names1 <- matrix(freq_1, nrow=6, ncol=5, byrow = T, dimnames=list(row_names1, column_names1))

matrix_names1[4,] #row
matrix_names1[,5] #column
matrix_names1[4,5] #column and row
matrix_names1[c(1),] #extract more than 1 row
matrix_names1[,c(1)] #extract more than 1 row

#3 ways to extract data in matrix
my_1 <- matrix_names1[c("A", "B"), c("White", "Green")]
my_2 <- matrix_names1[c(1,2), c(3,4)]
my_3 <- matrix_names1[1:2, 3:4]
my_4 <- matrix_names1[1:3, 3:4]


my_5 <- matrix_names1[c(1,2), c(2,3,5)]
my_6 <- matrix_names1[1:2, c(2:3,5)]
matrix_names1[,2:4] #all columns
matrix_names1[2:4,] #all rows


#LIST - CREATING A LIST
my_list <- list(freq, educational_attainment, matrix_names1, f_vgender)

freq_2 <- seq(1, 10, by=0.5)
fave_subjects <- c("Spelling", "Math", "Science")
ordered_fs <- factor(fave_subjects, ordered = TRUE, levels = c("Spelling", "Math", "Science"))
my_list2 <- list(freq_1, freq_2, ordered_fs)


#DATAFRAME - raw data
#data.frame(v1, v2, v3.....)

df1 <- data.frame(v_name, v_age, v_gender)

b_name <- c("elijah", "christian", "nikka")
b_age <- c(20, 20, 21)
df2 <- data.frame(b_name, b_age)

names(b_age) <- b_name #gives data name, instead of just a number
df3 <- data.frame(b_name, b_age)

#from the SAMPLE_DATA
NEW_DF2 <- data.frame(Gender=SAMPLE_DATA$GENDER, Favorite_Subject = SAMPLE_DATA$FAVORITE_SUBJECT, Grade_in_Math = SAMPLE_DATA$GRADE_IN_MATH, Grade_in_SP = SAMPLE_DATA$GRADE_IN_STATISTICS_AND_PROBABILITY, Grade_in_Science = SAMPLE_DATA$GRADE_IN_SCIENCE, Grade_in_MIL = SAMPLE_DATA$GRADE_IN_MEDIA_AND_INFORMATION_LITERACY)




