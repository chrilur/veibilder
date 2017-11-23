#Kjør taskscheduleR

library(taskscheduleR)
myscript <- system.file("extdata", "webscr.R", package = "taskscheduleR")

taskscheduler_create(taskname = "hent_veibilder", rscript = myscript,
                     schedule = "MINUTE", starttime = "16:25", modifier = 5)


###Prøv en bedre metode
###https://tgmstat.wordpress.com/2013/09/11/schedule-rscript-with-cron/

###https://technet.microsoft.com/en-us/library/cc772785(WS.10).aspx

schtasks /create /sc hourly /st 17:00 /tn "Veibilder" /tr Rscript C:\Users\n633164\Documents\R\veibilder\webscr.R
