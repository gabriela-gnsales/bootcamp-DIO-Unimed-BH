print('hello world')

objeto1 <- 3*3
objeto1

# comentário

pi

LETTERS

month.name
month.abb

# Vetor -> usa a função 'c' (de concatenar)
(primeiro.vetor <- c(1, 3, 5, 9, 10))
# Comprimento do vetor
length(primeiro.vetor)

# Matriz
A <- matrix(c(2, 4, 4, 5, 7, 9, 10), nrow = 2, ncol = 3, byrow = TRUE)
print(A)

B <- matrix(c(3, 4, 8, 1, 2, 7), nrow = 2, ncol = 3, byrow = TRUE)
print(A * B)

# Estatística básica

result.mean <- mean(A)
print(result.mean)

result.median <- median(A)
print(result.median)

getmode <- function(v) {
   uniqv <- unique(v)
   uniqv[which.max(tabulate(match(v, uniqv)))]
}

result.mode <- getmode(A)
print(result.mode)
