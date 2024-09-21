
# libs ----

#install.packages('tidyverse')
library('tidyverse')


# База ----

print('Hello world!')


# Калькулятор ----

2 + 2
2 * 3
12 / 4
14 / 4
14 %% 4
14 %/% 4


# Операторы отношений ----

1 > 2
1 <= 1
1 == 2
1 == 1
1 != 0

TRUE == 1


TRUE & TRUE
TRUE | FALSE

# Переменные ----

a <- 2300 # "option(alt)" + "-" = "<-"
b <- "ar"

# Типы объектов ----

typeof(a)
typeof(b)


# Вектор ----

vec <- c(2,4,8,16,32)
vec_2 <- c(1:5)

vec[1]

vec[c(5:1)]

vec < vec_2


# Матрица ----

m1 <- matrix(1:9, nrow = 3)
m2 <- matrix(1:9, nrow = 3, byrow = TRUE)

(m1 + m2)[3,2]
(m1 + m2)[,2]
(m1 + m2)[c(1,2),c(1,2)]
