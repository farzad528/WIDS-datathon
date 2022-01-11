install.packages("MPV")
install.packages("DAAG")
library(MPV)
# simple regression
frame<-read.csv("train.csv")
head(frame)
model<-lm(formula =frame$site_eui ~ .,data=frame)
summary(model)
anova_model<-anova(model)
anova_model
library(MPV)
PRESS(model)

#k-fold validation
library(DAAG)
cvoutput<-cv.lm(data = frame, form.lm=formula(site_eui ~ .), m=3, dots = FALSE,seed=32, printit = TRUE)

// haha