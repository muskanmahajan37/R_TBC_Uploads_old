# Page.No: 11.6 - 11.7

condition <- c("Heads","Tails")
observed <- c(50,130)
expected <- c(90,90)

DF <- data.frame(condition, observed, expected)
View(DF)

alpha5 <- 0.05   # 5% significance level
alpha1<-0.01     #1% significance level
df <- nrow(DF) - 1   # Degree of freedom

chi_sq_val_5 <- round(qchisq(alpha5,df,lower.tail = F), 2)   # Chi-square value
chi_sq_val_1<- round(qchisq(alpha1,df,lower.tail = F), 2)

diff <- DF$observed - DF$expected   # Difference
diff_sq <- diff ** 2   # Difference squared
ans <- round(diff_sq / DF$expected, 2)   # Difference squared weighted by expected frequency

chi_sq <- sum(ans)   # Chi-square 

cat("Value of chi-square is", chi_sq)

if(chi_sq > chi_sq_val_5)
  if(chi_sq > chi_sq_val_1)  
{
  cat("Reject null hypothesis and it is significant")
} else
{
  cat("Cannot reject null hypothesis and no significance")
}

"The answer provided in the text book is wrong"