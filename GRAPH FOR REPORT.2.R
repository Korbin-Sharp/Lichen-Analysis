library(ggplot2)
library(ggthemes)
library(tidyverse)
library(readxl)
library(readr)

lichen <- read_excel("Lichen Data Delta Gamma.xlsx", sheet = 1)
colnames(lichen)

glimpse(lichen)

ggplot(lichen, aes(x=age, y='lichen richness'))+
  geom_point() +
  geom_smooth(method=lm, color="red", fill="#69b3a2", se=TRUE)+
  theme_economist()

names(lichen)[names(lichen) == "lichen richness"] <- "lichen_richness"

plot(lichen_richness ~ age, data = lichen,
     xlab = 'Age of Lichen Growing Surface',
     ylab = 'Average Lichen Species Lichness')
mod <- lm (lichen_richness ~ age, data = lichen)
abline(mod, lty=2, col="red")
coef(mod)
anova(mod)
summary(mod)
