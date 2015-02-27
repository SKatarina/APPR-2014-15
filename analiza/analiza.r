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