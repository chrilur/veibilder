#Skjermbilde av seks utvalgte kamera

sti <- "O:\\NYDI\\Hordaland\\Felles\\Christian_Lura\\veibilder\\"
sti2 <- "C:\\Users\\n633164\\NRK\\DK-redaksjonen Hordaland - 01 Nett\\Nettbilder\\veibilder\\"
sti3 <- "O:\\NYDI\\Hordaland\\Felles\\Christian_Lura\\veibilder\\"

mappe <- c("Borlaug", "Dyranut", "Lagunen")
kamera <- function(i) {
	cam <- paste0(sti3, mappe[i])
}

get.img <- function(x) {	
	setwd(kamera(x))
	pics <- dir()
	pics <- sort(pics, decreasing = TRUE)
	pic <- pics[1]
	file <- paste0(kamera(x),"\\",pic)
	return(file)
}

