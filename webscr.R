#URL: https://www.vegvesen.no/trafikkinformasjon/Reiseinformasjon/Trafikkmeldinger/Webkamera
#https://github.com/bnosac/taskscheduleR/blob/master/README.md

setwd("C:/Users/n633164/Documents/R/veibilder")

koder <- c(100094, 100092, 100091, 100093, 110678, 2037216, 393134, 395726, 393213, 
			125512, 719900, 100098, 100116, 2085347, 127264, 100113, 672072, 320779, 640726, 
			110824, 289477, 457921, 566682, 406352, 469528, 110708, 455931, 2009790, 1107703,
			298294, 1009118)
steder <- c("Romarheimsdalen", "Kvamskogen", "Sotrabrua Vest", "Eidesmoen", "Lagunen", "Nærøydalen", "Vikafjellet", "Flåm", "Velure", 
			"Dyranut", "Leiro bom", "Borlaug", "Skodvin", "Midtlæger", "Haukelifjell", "Vinje", "Indre Arna", "Nordhordlandsbrua", "Steinrusten",
			"Mehammar", "Eggemoen", "Nakkerud", "Sollihøgda", "Vøyenenga", "Andelva", "Ljøsne", "Senjahopen", "Kanestraum", "Tresfjordbrua",
			"Hjerkinn", "Røldalstunnelen aust")
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