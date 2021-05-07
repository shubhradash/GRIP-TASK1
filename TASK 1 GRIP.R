#IMPORT THE DATA
data <- read.csv("C:\\Users\\HP\\Desktop\\studentscores.csv", header = TRUE)

#VIEW THE DATA
attach(data)
names(data)
class(Hours)
class(Scores)

#MAKE A SCATTERPLOT
plot(Hours, Scores, main="student scores")

#CHECK CORRELATION BETWEEN THE TWO VARIABLES
cor(Hours, Scores)

#CONSTRUCT THE LINEAR MODEL
model <- lm(Scores~Hours, data=data)
attributes(model)
plot(Hours, Scores, main="student scores")
abline(model, col="steelblue", lwd=3)

#PREDICTING SCORES
predictedscore <- predict(model, list(Hours=9.25))
View(predictedscore)

