 ######################################
 #          Exercises 01              #
 ######################################
scores <- c(65, 70, 85, 95, 75, 80, 80, 90, 88, 92, 78, 82, 76, 84, 86, 73)

stem(x = scores)

stem(scores, scale = 2)
stripchart(scores, method = "stack")

scores2 <- c(rep(c(65,70), 5),
             85, 95, 75, 80, 80, 90, 88, 92, 78, 82,
             rep(c(76,84,86,73), 6))
stripchart(scores2,
           method = 'stack',
           pch = 19,
           col = 'blue',
           offset = 1,
           cex = 1.5,
           main = "Customized Dot Plot",
           xlab = "Scores")

data <- rnorm(100)
hist(data,
     main = "Histogram of normally distributed data",
     xlab = "Values", 
     ylab = "Frequency")

hist(data,
     breaks = 20,
     main = "Histogram of with 20 bins",
     xlab = "Values", 
     ylab = "Frequency")

hist(data,
     breaks = 15,
     col = "skyblue",
     border = "black",
     main = "Custom Histogram",
     xlab = "Values",
     ylab = 'Frequency')

grid(nx = NA, ny = NULL)

dH <- hist(data,
     breaks = 15,
     col = "lightgray",
     main = 'Histogram with Normal Curve',
     xlab = 'Values',
     ylab = 'Density',
     prob = TRUE)

curve(dnorm(x, mean = mean(data), sd = sd(data)),
      col = 'darkblue',
      lwd = 2,
      add = TRUE)

data1 <- rnorm(100, mean = 0)
data2 <- rnorm(100, mean = 2)

par(mfrow = c(1,2))
hist(data1,
     main = "Histogram of data1",
     xlab = "Values",
     col = "lightgreen")
hist(data2,
     main = "Histogram of data2",
     xlab = "Values",
     col = "lightcoral")

par(mfrow = c(1,1))

# boxplot time
boxplot(scores, 
        main = 'Boxplot of Exam Scores',
        ylab = 'scores')

scores.class1 <- c(65,70,85,75,80,78,76,73)
scores.class2 <- c(95,80,90,88,92,82,84,86)

scores.list <- list(Class1 = scores.class1,
                    Class2 = scores.class2)
boxplot(scores.list,
        main = "Boxplot of Exam Scores by Class",
        ylab = "Scores",
        col = c("lightblue", "lightgreen"))

boxplot(scores.list,
        notch = TRUE,
        main = "Boxplot of Exam Scores with Notches",
        ylab = 'Scores', col = c('lightblue','lightgreen'))




