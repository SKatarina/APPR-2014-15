# 2. faza: Uvoz podatkov

# Funkcija, ki uvozi podatke iz datoteke druzine.csv
uvozirekordi <- function() {
  return(read.table("podatki/rekordi.csv", sep = ",", as.is = TRUE,
                     header = TRUE, fileEncoding = "Windows-1250"))
}

# Zapišimo podatke v razpredelnico najvišji zaslužek v sezoni za m.
cat("Uvažam podatke o rekordih za moske...\n")
rekordi <- uvozirekordi()

# Če bi imeli več funkcij za uvoz in nekaterih npr. še ne bi
# potrebovali v 3. fazi, bi bilo smiselno funkcije dati v svojo
# datoteko, tukaj pa bi klicali tiste, ki jih potrebujemo v
# 2. fazi. Seveda bi morali ustrezno datoteko uvoziti v prihodnjih
# fazah.

uvozipokali <- function() {
  return(read.table("podatki/pokali.csv", sep = ",", as.is = TRUE,
                    header = TRUE, fileEncoding = "Windows-1250"))
}

  cat("Uvažam podatke o pokalih narodov ...\n")
  pokali <- uvozipokali()
  

uvoziekipnezmage <- function() {
  return(read.table("podatki/ekipnezmage.csv", sep = ",", as.is = TRUE,
                    header = TRUE, fileEncoding = "Windows-1250"))
}

cat("Uvažam podatke o ekipnih zmagah za moske ...\n")
ekipnezmage <- uvoziekipnezmage()

uvozimaxzasluzekM <- function() {
  return(read.table("podatki/maxzasluzekM.csv", sep = ",", as.is = TRUE,
                    header = TRUE, fileEncoding = "Windows-1250"))
}

cat("Uvažam podatke o največjih zasluzkih v sezoni za moske ...\n")
maxzasluzekM <- uvozimaxzasluzekM()

uvozimaxzasluzekZ <- function() {
  return(read.table("podatki/maxzasluzekZ.csv", sep = ",", as.is = TRUE,
                    header = TRUE, fileEncoding = "Windows-1250"))
}

cat("Uvažam podatke o največjih zasluzkih v sezoni za zenske ...\n")
maxzasluzekZ <- uvozimaxzasluzekZ()

uvoziMzmage <- function() {
  return(read.table("podatki/Mzmage.csv", sep = ",", as.is = TRUE,
                    header = TRUE, fileEncoding = "Windows-1250"))
}

cat("Uvažam podatke o zmagah za moske ...\n")
Mzmage <- uvoziMzmage()

uvoziZzmage <- function() {
  return(read.table("podatki/Zzmage.csv", sep = ",", as.is = TRUE,
                    header = TRUE, fileEncoding = "Windows-1250"))
}

cat("Uvažam podatke o zmagah za zenske ...\n")
Zzmage <- uvoziZzmage()

uvozim.k.globus <- function() {
  return(read.table("podatki/m.k.globus.csv", sep = ",", as.is = TRUE,
                    header = TRUE, fileEncoding = "Windows-1250"))
}

cat("Uvažam podatke o tekmovalcih, ki so osvojili mali kristalni globus ...\n")
m.k.globus <- uvozim.k.globus()

uvoziv.k.globus <- function() {
  return(read.table("podatki/v.k.globus.csv", sep = ",", as.is = TRUE,
                    header = TRUE, fileEncoding = "Windows-1250"))
}

cat("Uvažam podatke o tekmovalcih, ki so osvojili veliki kristalni globus ...\n")
v.k.globus <- uvoziv.k.globus()

uvozivsezmageskupaj <- function() {
  return(read.table("podatki/vsezmageskupaj.csv", sep = ",", as.is = TRUE,
                    header = TRUE, fileEncoding = "Windows-1250"))
}

cat("Uvažam podatke o državah, ki so kadarkoli vsaj enkrat dobile tekmo za svetovni pokal (23. marec 2014) ...\n")
vsezmageskupaj <- uvozivsezmageskupaj()
