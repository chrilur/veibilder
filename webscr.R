#Test-URL: https://www.vegvesen.no/public/webkamera/kamera?id=100094
#https://github.com/bnosac/taskscheduleR/blob/master/README.md

setwd("C:/Users/n633164/Documents/R/veibilder")

koder <- c(100094, 100092, 100091, 100093, 110678, 2037216, 393134, 395726, 393213, 125512, 719900)
steder <- c("Romarheimsdalen", "Kvamskogen", "Sotrabrua Vest", "Eidesmoen", "Lagunen", "Nærøydalen", "Vikafjellet", "Flåm", "Velure", "Dyranut", "Leiro bom")
cams <- data.frame(navn = steder, kode = koder, stringsAsFactors = FALSE)
url1 <- "http://www.vegvesen.no/public/webkamera/kamera?id="

get.img <- function(x) {
	url <- paste0(url1, x)
	sted <- cams$navn[cams$kode == x]
	tid <- as.character(Sys.time())
	tid <- gsub(":", "-", tid)
	langurl <- "C://Users/n633164/NRK/DK-redaksjonen Hordaland - 01 Nett/Nettbilder/veibilder/"
	filnavn <- paste0(langurl, sted, "/", tid, " ", sted, ".jpg")
	download.file(url, filnavn, mode="wb")
	}

for (i in koder) {get.img(i)}