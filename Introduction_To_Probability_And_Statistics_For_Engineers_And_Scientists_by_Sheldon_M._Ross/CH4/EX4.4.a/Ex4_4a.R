#install.packages("IPSUR")
#install.packages("prob")
library(IPSUR)
#read(IPSUR)
library(prob)
#read(prob)
#install.packages("combinat")
library(combinat)
library(discreteRV)
require(pracma)
library(cubature)


S <- rolldie(1, makespace = TRUE)
Ex = sum(S$X1*S$probs)
Ex