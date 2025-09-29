library(ggplot2)
library(ggthemes)
library(tidyverse)
library(readxl) 

lichen <- read_excel("Lichen Data Delta Gamma.xlsx", sheet = 1)

glimpse(lichen)
ggplot(lichen, aes(x=year, y=species_richness))+
  geom_point() +
  geom_smooth(method=lm, color="red", fill="#69b3a2", se=TRUE)+
  theme_economist()

plot(species_richness ~ year, data = lichen,
     xlab = "Age of Lichen Growing Surface",
     ylab = "Average Lichen Species Lichness")
mod <- lm (species_richness ~ year, data = lichen)
abline(mod, lty=2, col="red")
coef(mod)
anova(mod)
summary(mod)
