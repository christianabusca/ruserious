# NUMBER 1
score <- c(75, 77, 73, 80, 65, 74, 75, 69, 71, 72, 75, 74, 63, 76, 67, 70, 69, 76, 65, 68)
names(score) <- 1:20
score

# NUMBER 2
shallow <- c(13, 12, 11, 9, 11, 13, 14, 14, 14, 15)
deep <- c(12, 15, 14, 14, 13, 12, 15, 14, 16, 17)
shallow_deep <- factor(c(replicate(10, "shallow"), replicate(10, "deep")), ordered = F)
shallow_deep




# NUMBER 3
column_vectors <- c("Thriving", "Struggling", "Suffering")

row_vectors <- c("Obese", "Overweight", "Normal Weight", "Underweight")

inside_vectors <- c(202, 250, 102, 294, 302, 110, 300, 295, 103, 17, 17, 8)

social_well_being <- matrix(inside_vectors, nrow = 4, ncol = 3, byrow = TRUE, 
                            dimnames = list(row_vectors, column_vectors))
social_well_being

social_well_being[1:3,]

# NUMBER 4

FSvsGRADE_DF <- data.frame(G = SAMPLE_DATAV2$GENDER,FS = SAMPLE_DATAV2$FAVORITE_SUBJECT,GE = SAMPLE_DATAV2$GRADE_ENGLISH,GM = SAMPLE_DATAV2$GRADE_MATH,GS = SAMPLE_DATAV2$GRADE_SCIENCE)

FSvsGRADE_DF
# NUMBER 5

Fav_Math <- subset(FSvsGRADE_DF, FS=="MATH")
Fav_Math

Fav_notMath <- subset(FSvsGRADE_DF, FS!="MATH")
Fav_notMath

M_Science <- subset(FSvsGRADE_DF, G=="MALE" & FS == "SCIENCE")
M_Science

M_notScience <-  subset(FSvsGRADE_DF, G=="MALE" & FS != "SCIENCE")
M_notScience

# NUMBER 6
GMath_FaveMath <- Fav_Math$GM
GMath_FaveMath

GMath_FavenotMath <- Fav_notMath$GE
GMath_FavenotMath

GScie_FaveScie <- M_Science$GS
GScie_FaveScie
