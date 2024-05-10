#


Fav_MATH <- SAMPLE_DATAV2 %>% filter(FAVORITE_SUBJECT=="MATH")
Fav_ENG <- SAMPLE_DATAV2 %>% filter(FAVORITE_SUBJECT=="ENGLISH")
Fav_SCI <- SAMPLE_DATAV2 %>% filter(FAVORITE_SUBJECT=="SCIENCE")
average <- 

# Testing the Normality of Data


# No.1: Grade in Science whose favorite subject is Math (Kolmogorov Smirnov)
ks.test(Fav_MATH$GRADE_SCIENCE, "pnorm")
#p-value < 2.2e-16
# Interpretation: Does not follow normal distribution

# No.2: Grade in Science whose favorite subject is English (Kolmogorov Smirnov)
ks.test(Fav_ENG$GRADE_SCIENCE, "pnorm")
#p-value < 2.2e-16
# Interpretation: Does not follow normal distribution


# No.3: Grade in Science whose favorite subject is Science (Kolmogorov Smirnov)
ks.test(Fav_SCI$GRADE_SCIENCE, "pnorm")
#p-value < 2.2e-16
# Interpretation: Does not follow normal distribution

# No.4: Grade in Science whose favorite subject is Math (Lilliefors)
lillie.test(Fav_MATH$GRADE_SCIENCE)
# Interpretation: Does not follow normal distribution

# No.5: Grade in Science whose favorite subject is English (Lilliefors)
lillie.test(Fav_ENG$GRADE_SCIENCE)
# Interpretation: Does not follow normal distribution


# No.6: Grade in Science whose favorite subject is Science (Lilliefors)
lillie.test(Fav_SCI$GRADE_SCIENCE)
# Interpretation: Does not follow normal distribution


# No.7: Grade in Science whose favorite subject is Math (Anderson - Darling)
ad.test(Fav_MATH$GRADE_SCIENCE)
# Interpretation: Does not follow normal distribution


# No.8: Grade in Science whose favorite subject is English (Anderson - Darling)
ad.test(Fav_ENG$GRADE_SCIENCE)
# Interpretation: Does not follow normal distribution


# No.9: Grade in Science whose favorite subject is Science (Anderson - Darling)
ad.test(Fav_SCI$GRADE_SCIENCE)
# Interpretation: Does not follow normal distribution


# No.10: Grade in Science whose favorite subject is Math (Shapiro Wilk)
shapiro.test(Fav_MATH$GRADE_SCIENCE)
# Interpretation: Does not follow normal distribution


# No.11: Grade in Science whose favorite subject is English (Shapiro Wilk)
shapiro.test(Fav_ENG$GRADE_SCIENCE)
# Interpretation: Does follow normal distribution


# No.12: Grade in Science whose favorite subject is Science (Shapiro Wilk)
shapiro.test(Fav_SCI$GRADE_SCIENCE)
# Interpretation: Does not follow normal distribution


# Testing the Homogeneity of Variances of Data


# No.13: Grade in Science group according to favorite subject (Bartlett Test)
bartlett.test(SAMPLE_DATAV2$GRADE_SCIENCE ~ factor(SAMPLE_DATAV2$FAVORITE_SUBJECT))
#p-value: 0.164
# Interpretation: Equal Variances Assumed


# No.14: Grade in Science group according to favorite subject (Levene Test)
leveneTest(SAMPLE_DATAV2$GRADE_SCIENCE ~ factor(SAMPLE_DATAV2$FAVORITE_SUBJECT))
#p-value: 0.3543
# Interpretation: Equal Variances Assumed


# No.15: Grade in Science group according to relationship status (Levene Test)
leveneTest(SAMPLE_DATAV2$GRADE_SCIENCE ~ factor(SAMPLE_DATAV2$REL_STATUS))
#p-value: 0.1163
# Interpretation: Equal Variances Assumed

