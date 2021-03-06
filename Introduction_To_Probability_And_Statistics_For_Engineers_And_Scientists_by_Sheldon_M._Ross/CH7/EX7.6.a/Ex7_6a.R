sum_lives = 1740;
num = 10;
alpha = (1-0.95)/2;
chi1= qchisq(1-alpha,2*num)
chi2 = qchisq(alpha,2*num)
lowerlim = 2*sum_lives/chi1;
upperlim = 2*sum_lives/chi2;
cat("The 95% confidence interval is ",lowerlim, "to ",upperlim)

'
Textbook confidence interval is from 101.847 to 360.211 
whereas in above solution is 101.84489 to 362.8485 because of the difference in the value of chi-square(0.975, 20). 
The textbook says the value is 9.661 whereas R calculates its value as 9.59
'