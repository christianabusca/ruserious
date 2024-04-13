#Quiz 2
#Members:
#Abusca, Christian
#Burce, Diana
#Dela Paz, Ella
#Fernandez, Edriana
#Lanaza, Nikka

#No. 1
# 1.1 
score <- c(75, 77, 73, 80, 65, 74, 75, 69, 71, 72, 75, 74, 63, 76, 67, 70, 69, 76, 65, 68)
#1.2 
names(score) <- 1:20


#No.2
shallow <- c(13, 12, 11, 9, 11, 13, 14, 14, 14, 15)
deep <- c(12, 15, 14, 14, 13, 12, 15, 14, 16, 17)

factor_sd <- factor(c(rep("shallow", 10), rep("deep", 10)), ordered = FALSE)
factor_sd


#No. 3
#3.1
column_vectors <- c("Thriving", "Struggling", "Suffering")
row_vectors <- c("Obese", "Overweight", "Normal Weight", "Underweight")
inside_vectors <- c(202, 250, 102, 294, 302, 110, 300, 295, 103, 17, 17, 8)
social_well_being <- matrix(inside_vectors, nrow = 4, ncol = 3, byrow = TRUE, 
                            dimnames = list(row_vectors, column_vectors))
swb_no_underweight <- social_well_being[1:3,]


#No. 4
FSvsGRADE_DF <- data.frame(G = SAMPLE_DATAV2$GENDER,FS = SAMPLE_DATAV2$FAVORITE_SUBJECT,GE = SAMPLE_DATAV2$GRADE_ENGLISH,GM = SAMPLE_DATAV2$GRADE_MATH,GS = SAMPLE_DATAV2$GRADE_SCIENCE)
FSvsGRADE_DF


#No. 5
#5.1
Fave_Math <- subset(FSvsGRADE_DF, FS == "MATH")
#5.2
Fave_notMath <- subset(FSvsGRADE_DF, FS != "MATH")
#5.3
M_Science <- subset(FSvsGRADE_DF, G == "MALE" & FS == "SCIENCE")
#5.4
M_notScience <- subset(FSvsGRADE_DF, G == "MALE" & FS != "SCIENCE")


#No. 6
#6.1
GMath_FaveMath <- c(Fave_Math$GM)
GMath_FaveMath
#6.2
GMath_FavenotMath <- Fave_notMath$GE
GMath_FavenotMath
#6.3
GScie_FaveScie <- M_Science$GS
GScie_FaveScie

