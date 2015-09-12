# 4. faza: Analiza podatkov

cat("Rišem zemljevid...\n")
pdf("slike/Rekordi.pdf", width=6, height=4)
attach(rekordi)
drzave <- unique(Drzava)
barve <- rainbow(length(drzave))
plot(Leto, Dolzina_m, xlim=c(1994, 2020), ylim=c(200, 280),
     col = barve[match(Drzava, drzave)],
     pch = ifelse(Lokacija == "Planica", 18, 15))
lin <- lm(Dolzina_m ~ Leto)
abline(lin)
detach(rekordi)
dev.off()
premica <- function(x) {
  
  2.245608*x-4270.83226
}


pdf("slike/Rekordi1.pdf", width=6, height=4)

rekordi1 <- rekordi[-c(1,2),]

attach(rekordi1)
drzave <- unique(Drzava)
barve <- rainbow(length(drzave))
plot(Leto, Dolzina_m, xlim=c(1994, 2020), ylim=c(200, 280),
     col = barve[match(Drzava, drzave)],
     pch = ifelse(Lokacija == "Planica", 18, 15))
lin <- lm(Dolzina_m ~ Leto)
abline(lin)
detach(rekordi1)
title("Rekordi od leta 1994 do 2014")
dev.off()
premica <- function(x) {
  
  2.460698*x-4701.097011
}
