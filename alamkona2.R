v_name <- c("Christian", "Laurence", "Andri", "Nikka", "Keren")

v_age <- c(20, 20, 20, 20, 20)
gender <- c("M", "M", "M", "F", "F")
names(gender) <- v_name
gender
data <- c(v_name, v_age, gender)
matrix_data <- matrix(data, byrow = TRUE, nrow =3)

datas <- c("data_1", "data_2", "data_3", "data_4", "data_5")
vars <- c("Names", "Age", "Gender")

colnames(matrix_data) <- datas
rownames(matrix_data) <- vars

matrix_data
summary(matrix_data)

seq_2 <- seq(1, 100, by = 10)
seq_2
seq_3 <- seq(1, 100, length.out=20)
seq_3
seq_3[c(3,7,8)]

f_gender <- factor(gender)
f_gender

# VECTOR
marital_status <- c(replicate(30, "Single"), replicate(20, "Married"),
                    replicate(10, "Seperated"))
martial_factor <- factor(marital_status)


# STUDENTS

tv <- c(replicate(50, "Most of the time"), replicate(15,"Sometimes"), replicate(5,"Hardly ever"))
tv
tv_factor <- factor(tv, ordered=TRUE, levels = c("Hardly ever", "Sometimes", "Most of the time"))
tv_factor
summary(tv_factor)