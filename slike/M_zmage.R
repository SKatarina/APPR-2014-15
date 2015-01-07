pdf("slike/Mzmage.pdf") #naslov pdfja
pie(Mzmage[,"Zmage"], labels = gsub(" ", "\n", Mzmage[,1]))
text(0,1,"Posamične zmage za moške", cex =2)
dev.off()

pdf("slike/Zzmage.pdf") #naslov pdfja
pie(Zzmage[,"Zmage"], labels = Zzmage[,1])
text(0,1,"Posamične zmage za ženske", cex =2)
dev.off()


pdf("slike/pokali.pdf") #naslov pdfja
pie(table(pokali[,"Prva"]), main = "Največkrat osvojeno\n1. mesto po državah (2000-2014)", cex.main = 1.5)
#text(0,1,"Največkrat osvojeno\n1. mesto po državah", cex =2)
dev.off()

pdf("slike/pokali2.pdf") #naslov pdfja
pie(table(pokali[,"Druga"]), main = "Največkrat osvojeno\n2. mesto po državah (2000-2014)", cex.main = 1.5)
#text(0,1,"Največkrat osvojeno\n2. mesto po državah", cex =2)
dev.off()

pdf("slike/pokali3.pdf") #naslov pdfja
pie(table(pokali[,"Tretja"]), main = "Največkrat osvojeno\n3. mesto po državah (2000-2014)", cex.main = 1.5)
#text(0,1,"Največkrat osvojeno\n3. mesto po državah", cex =2)
dev.off()
