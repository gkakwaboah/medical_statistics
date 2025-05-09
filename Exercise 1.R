library(MASS)
data(birthwt)
bwt <- birthwt$bwt 

cat("Exercise 1\n")

#1a
min_bwt <- min(bwt)
max_bwt <- max(bwt)
mean_bwt <- mean(bwt)
sd_bwt <- sd(bwt)
cat("\n1a \nMinimum:", min_bwt, "\nMaximun:", max_bwt, "\nMean:", mean_bwt, "\nStandard deviation:", sd_bwt, "\n\n")

#1b
sort_bwt <- sort(bwt)
cat("\n1b \nSorted Bithweight:\n", sort_bwt, "\n")

#1c
median_bwt_firstten <- median(bwt[1:10])
cat("\n1c \nMedian of first 10 weights:", median_bwt_firstten, "\n")

#1d
summary_bwt <- summary(bwt)
cat("\n1d \nSummary of birthweight\n")
print(summary_bwt)

quartile_bwt <- quantile(bwt)
cat("\nQuartiles\n")
print(quartile_bwt)

quantile_0.05 <- quantile(bwt, probs = 0.05)
cat("\nThe 0.05 quantile is:", quantile_0.05)
quantile_0.95 <- quantile(bwt, probs = 0.95)
cat("\nThe 0.95 quantile is:", quantile_0.95, "\n")

#2a: histogram
hist(bwt)

#2b: box plot
boxplot(bwt)
