
attach(SAMPLE_DATAV2)
# USE THIS
Grade_Math <- SAMPLE_DATAV2$GRADE_MATH
hist(Grade_Math, probability = T, col="blue")
lines(density(Grade_Math), col="black")
# OR
hist(SAMPLE_DATAV2$GRADE_MATH, probability = T, col="blue")
lines(density(SAMPLE_DATAV2$GRADE_MATH), col="black")

qqnorm(SAMPLE_DATAV2$GRADE_MATH)
qqline(SAMPLE_DATAV2$GRADE_MATH)

# Shapiro Test
shapiro.test(SAMPLE_DATAV2$GRADE_SCIENCE)
lillie.test(SAMPLE_DATAV2$GRADE_SCIENCE)
ad.test(SAMPLE_DATAV2$GRADE_SCIENCE)
ks.test(SAMPLE_DATAV2$GRADE_SCIENCE, "pnorm")


hist(SAMPLE_DATAV2$GRADE_SCIENCE, probability = T, col="blue")
lines(density(SAMPLE_DATAV2$GRADE_SCIENCE), col="black")

# If the p-value is greater than the alpha = 0.05, then it is assumed equal variances

bartlett.test(SAMPLE_DATAV2$GRADE_SCIENCE ~ factor(SAMPLE_DATAV2$FAVORITE_SUBJECT))


leveneTest(SAMPLE_DATAV2$GRADE_SCIENCE ~ factor(SAMPLE_DATAV2$FAVORITE_SUBJECT))



score <- c(75,77,73,80,65,
           74,75,69,71,72,
           75,74,63,76,67,
           70,69,76,65,68)

shapiro.test(score)
lillie.test(score)
ad.test(score)
ks.test(score, "pnorm")

t.test(score, mu=70, alternative = "greater", conf.level = 0.95)


Fav_MATH <- SAMPLE_DATAV2 %>% filter(FAVORITE_SUBJECT=="MATH")
shapiro.test(Fav_MATH$GRADE_SCIENCE)
lillie.test(Fav_MATH$GRADE_SCIENCE)
ad.test(Fav_MATH$GRADE_SCIENCE)
ks.test(Fav_MATH$GRADE_SCIENCE, "pnorm")


# 5102024
#Dependent Sample T-Test#1

pre <- c(14,14,14,6,18,
         10,18,10,6,10,
         10,10,6,2,14)

post <- c(16,16,15,12,16,
          12,16,13,5,11,
          12,14,6,9,12)

shapiro.test(pre-post)
t.test(pre, post, alternative = "less", paired = TRUE, conf.level = 0.95)
t.test(post, pre, alternative = "greater", paired = TRUE, conf.level = 0.95)


score_1 <- c(24,17,32,14,16,
             22,26,19,19,22)


score_2 <- c(26,24,25,19,19,
             25,25,24,22,23)
shapiro.test(score_1 - score_2)
t.test(score_1, score_2, alternative = "less", paired = TRUE, conf.level = 0.95)


#Independent Sample T-Test #1


processing <- c(13,12,11,9,11,
                13,14,14,14,15,
                12,15,14,14,13,
                12,15,14,16,17)
shapiro.test(processing)


shallow <- c(13,12,11,9,11,
             13,14,14,14,15)
shapiro.test(shallow)
deep <- c(12,15,14,14,13,
          12,15,14,16,17)    
shapiro.test(deep)

instruction <- c(replicate(10, "shallow"), replicate(10,"deep"))
leveneTest(processing ~ factor(instruction))

t.test(shallow, deep, alternative = "two.sided", var.equal = T, conf.level = 0.90)


#Independent Sample T-Test #2


visual <- c(51.08,57.03,44.85,75.21,56.87,
            75.28,57.07,80.30,52.20)
shapiro.test(visual)
textual <- c(64.55,57.60,68.59,50.75,49.63,
             43.58,57.40,49.48,49.57)
shapiro.test(textual)

score_v_t <- c(visual, textual)
rep_group <- c(replicate(9, "visual"), replicate(9, "textual"))
leveneTest(score_v_t ~ factor(rep_group))
t.test(visual, textual, alternative = "two.sided", var.equal = T, conf.level = 0.95)

#ANOVA#1


pressure <- c(643, 655, 702, 451, 678, 509,
              469, 427, 525, 532, 562, 571,
              484, 456, 402, 623, 711, 488)
compact <- c(643, 655, 702, 451, 678, 509)
shapiro.test(compact)

mid <- c(469, 427, 525, 532, 562, 571)
shapiro.test(mid)

full <- c( 484, 456, 402, 623, 711, 488)
shapiro.test(full)

press_f <- c(replicate(6, "compact"), replicate(6, "mid"), replicate(6, "full"))
leveneTest(pressure ~ factor(press_f))

oneway.test(pressure~factor(press_f ), var.equal = T)

# ONEWAY ANOVA EX.2


number_of_times <- c(9, 12, 14, 11, 13,
                     10, 6, 9, 9, 10,
                     12, 14, 11, 13, 11,
                     9, 8, 11, 7, 8)

p1 <- c(9, 12, 14, 11, 13)
shapiro.test(p1)

p2 <- c(10, 6, 9, 9, 10)
p3 <- c(12, 14, 11, 13, 11)
p4 <- c(9, 8, 11, 7, 8)
shapiro.test(p2)
shapiro.test(p3)
shapiro.test(p4)

prog_f <- c(replicate(5, "Program 1"), replicate(5, "Program 2"), 
            replicate(5, "Program 3"), replicate(5, "Program 4"))

leveneTest(number_of_times~ factor(prog_f))

oneway.test(number_of_times~factor(prog_f ), var.equal = T)


# PEARSON PEARSON PEARSON 

#Pearson Moment Correlation#1

number_of_person <- c(5, 6, 14, 19, 15, 11, 18, 22, 26, 25)
shapiro.test(number_of_person)

no_of_cups <- c(10, 20, 30, 40, 30, 20, 40, 40, 50, 30)
shapiro.test(no_of_cups)
cor.test(number_of_person, no_of_cups, method = "pearson", conf.level = 0.95)
#Pearson Moment Correlation#2

Club_head_speed <- c(100, 102, 103, 101, 105, 100, 99, 105)

Distance <- c(257, 264, 274, 266, 277, 263, 258, 275)
shapiro.test(Club_head_speed)
shapiro.test(Distance)
cor.test(Club_head_speed, Distance, method = "pearson", conf.level = 0.95)
