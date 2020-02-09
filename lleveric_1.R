library(readxl)
data <- read_excel("~/Documents/Assignment 1/NIH inst ranking.xls", col_names = FALSE)
summary(data)
colnames(data) <- c("rank","Inst","prod")
plot(data$prod)
plot(data$rank, data$prod)
trans.data <- data
# transform data
trans.data$log.prod <- log10(trans.data$prod)
#this begins my model
lm1 <- lm(prod~rank, data = data)
summary(lm(prod~rank, data = data))
names(lm1)
lm1$fitted.values
