# 1. From SAMPLE DATA create a data frame with the following
# variables: 5 points

new_df <- data.frame(GENDER=SAMPLE_DATA$GENDER, 
                    AGE = SAMPLE_DATA$AGE, 
                    FAVORITE_SUBJECT = SAMPLE_DATA$FAVORITE_SUBJECT, 
                    FAVORITE_COLOR = SAMPLE_DATA$FAVORITE_COLOR,
                    GRADE_IN_MATH = SAMPLE_DATA$GRADE_IN_MATH, 
                    GRADE_IN_STATISTICS_AND_PROBABILITY = SAMPLE_DATA$GRADE_IN_STATISTICS_AND_PROBABILITY, 
                    GRADE_IN_SCIENCE = SAMPLE_DATA$GRADE_IN_SCIENCE, 
                    GRADE_IN_MEDIA_AND_INFORMATION_LITERACY = SAMPLE_DATA$GRADE_IN_MEDIA_AND_INFORMATION_LITERACY)
head(new_df)

# 2. Create subsets out of data frame in number 1 with the following conditions: 
# Name the subsets as ”subset2.1”, ”subset2.2”,.. [2 points each]

# 2.1. All male whose favorite color is blue and at least 19 years old.
subset2.1 <- subset(new_df, GENDER=="MALE" & FAVORITE_COLOR=="BLUE" & AGE >= 19)
subset2.1

# 2.2. All females whose favorite subject is 
# English and with at most 95 grade in Math, and Statistics and Probability.
subset2.2 <- subset(new_df, GENDER=="FEMALE" & 
                      FAVORITE_SUBJECT=="ENGLISH" & 
                      GRADE_IN_MATH <= 95 & 
                      GRADE_IN_STATISTICS_AND_PROBABILITY <=95)
subset2.2

# 2.3. All females whose favorite color is not red and favorite subject is Math.
subset2.3 <- subset(new_df, GENDER=="FEMALE" & 
                      FAVORITE_COLOR != "RED" & 
                      FAVORITE_SUBJECT=="MATH")
subset2.3

# 2.4. All male whose favorite subject is not 
# Math but with at least 95 grade in Math, and Statistics and Probability.
subset2.4 <- subset(new_df, GENDER=="MALE" & 
                      FAVORITE_SUBJECT!="MATH" &
                      GRADE_IN_MATH >= 95 & 
                      GRADE_IN_STATISTICS_AND_PROBABILITY >= 95)
subset2.4

# 2.5. All students whose favorite subject is not English 
# and whose grade in Media and Information Literacy is more than 95.
subset2.5 <- subset(new_df,
                      FAVORITE_SUBJECT!="ENGLISH" &
                      GRADE_IN_MEDIA_AND_INFORMATION_LITERACY > 95)
subset2.5

# 2.6. All students whose favorite subject is Science 
# but with less than 95 grade in Science.
subset2.6 <- subset(new_df,
                    FAVORITE_SUBJECT== "SCIENCE" &
                      GRADE_IN_SCIENCE < 95)
subset2.6

# 3. Extract all the categorical variables from the SAMPLE DATA, 
# and create a list of factor of these variables.

# CATEGORICAL DATA, MEANING IT IS EITHER NOMINAL - WITHOUT ORDER, ORDINAL - WITH ORDER!!!!!!
factor_gender <- factor(SAMPLE_DATA$GENDER)
factor_favorite_subject <- factor(SAMPLE_DATA$FAVORITE_SUBJECT)
factor_favorite_color <- factor(SAMPLE_DATA$FAVORITE_COLOR)
factor_rel_status <- factor(SAMPLE_DATA$REL_STATUS)
factor_study_habit <- factor(SAMPLE_DATA$STUDY_HABIT, ordered = TRUE, levels = c(1, 2, 3, 4))
categorical_list <- list(GENDER = factor_gender, 
                         FAVORITE_COLOR = factor_favorite_color, 
                         FAVORITE_SUBJECT = factor_favorite_subject, 
                         REL_STATUS = factor_rel_status, 
                         STUDY_HABIT = factor_study_habit)
categorical_list

# 4. Create the following vector:

# 4.1 vector containing integers from 1 to 20
values <- 1:20
values

# 4.2 vector containing colors ”Red”, ”Blue”, ”Yellow”, and ”Green”
vector_colors <- c("Red", "Blue", "Yellow", "Green")
vector_colors

# 4.3 vector containing letters ”A”, ”B”, ”C”, ”D”, and ”E”
vector_letters <- c("A", "B", "C", "D", "E")
vector_letters

# 5. Use the vectors from number 4 to create a matrix with values 1 - 20 by
# column,with row names - ”Red”, ”Blue”, ”Yellow” and ”Green”, and column
# names - ”A”, ”B”, ”C”, ”D”, and ”E”.

matrix_v <- matrix(values, nrow = 4, ncol = 5, byrow=FALSE, 
                   dimnames = list(vector_colors, vector_letters))
matrix_v

# 6. Extract the columns for ”A”, ”C”, and ”D”.
extract_cols <- matrix_v[, c(1,3:4)]
extract_cols

# 7. Extract the rows for ”Blue” and ”Yellow”.[2 points]
extract_rows <- matrix_v[c(2:3), ]
extract_rows

# 8. Create a list with a sequence of numbers with 40 elements 
# between 1-20 inclusive, and a factor of your 5 favorite artists in order.

fourty_elements <- seq(1, 20, length.out=40)
fav_artist <- c("Belle Mariano", "Donny Pangilinan", 
                       "Maris Racal", "Kim Soo-hyun", "Kim Ji-won")
factored_artist <- factor(fav_artist, ordered = TRUE, levels = c("Donny Pangilinan", 
                                                                 "Kim Ji-won", 
                                                                 "Kim Soo-hyun", 
                                                                 "Belle Mariano", 
                                                                 "Maris Racal"   ))
list_them <- list(fourty_elements, factored_artist)
list_them