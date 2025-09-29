plot(species_richness~year, data=lichen)

points(mean(lichen$species_richness)~mean(lichen$year), cex=2, col=2, pch=16)

abline(mean(lichen$species_richness),0, col="blue", lty=2)

for( i in 1:length(c)){
  abline(lichen$species_richness, m[i], lty=2, col=2)}

m<- seq(-0.04, 0.02, 0.0075)

c<-c()

for(i in 1:length(m)) {
  c[i]<- mean(lichen$species_richness) - m[i]*mean(lichen$year)
}



residuals<- lichen$species_richness - mean(lichen$species_richness)
total_ss <- sum(residuals^2)
