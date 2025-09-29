lichen <- read_excel("Lichen Data Delta Gamma.xlsx", sheet = 1)


names(lichen)[names(lichen) == "lichen richness"] <- "species_richness"


plot(species_richness ~ age, data=lichen)

points(mean(lichen$species_richness) ~ mean(lichen$age), cex=2, col=2, pch=16)

abline(mean(lichen$species_richness), 0, col="blue", lty=2)


m <- seq(-0.04, 0.02, 0.0075)

c <- numeric(length(m))

for(i in 1:length(m)) {
  
  c[i] <- mean(lichen$species_richness) - m[i]*mean(lichen$age)
  
  abline(c[i], m[i], lty=2, col=2)
}


residuals <- lichen$species_richness - mean(lichen$species_richness)

total_ss <- sum(residuals^2)
