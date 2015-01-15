# 3. faza: Izdelava zemljevida

# Uvozimo funkcijo za pobiranje in uvoz zemljevida.
source("lib/uvozi.zemljevid.r")

# Uvozimo zemljevid.
cat("Uvažam zemljevid...\n")
svet <- uvozi.zemljevid("http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/110m/cultural/ne_110m_admin_0_countries.zip",
                        "svet", "ne_110m_admin_0_countries.shp", mapa = "zemljevid",
                        encoding = "Windows-1250")
# Funkcija, ki podatke preuredi glede na vrstni red v zemljevidu
preuredi <- function(podatki, zemljevid) {
  nove.svet <- c()
  manjkajo <- ! nove.svet %in% rownames(podatki)
  M <- as.data.frame(matrix(nrow=sum(manjkajo), ncol=length(podatki)))
  names(M) <- names(podatki)
  row.names(M) <- nove.svet[manjkajo]
  podatki <- rbind(podatki, M)
  
  out <- data.frame(podatki[order(rownames(podatki)), ])[rank(levels(zemljevid$OB_UIME)[rank(zemljevid$OB_UIME)]), ]
  if (ncol(podatki) == 1) {
    out <- data.frame(out)
    names(out) <- names(podatki)
    rownames(out) <- rownames(podatki)
  }
  return(out)
}

cat("Rišem zemljevid...\n")
pdf("slike/Vse_zmage1.pdf", width=6, height=4)
barve <- topo.colors(max(vsezmageskupaj$Vse_zmage))[vsezmageskupaj$Vse_zmage]
m <- match(svet$name_long, vsezmageskupaj$Drzava)

u <- unique(vsezmageskupaj$Vse_zmage)
u <- u[order(u)]

plot(svet, col = barve[m])
title("Vse zmage do leta 2014 po državah")
legend("left", legend = u, bg = "white", fill = topo.colors(max(vsezmageskupaj$Vse_zmage))[u], cex = 0.6)
dev.off()

