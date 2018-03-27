#https://trinkerrstuff.wordpress.com/2015/02/11/scheduling-r-tasks-via-windows-task-scheduler/
#Kjør Rscript fra command line

recurrence <- "hourly"
task_name <-  "hent_veibilder"
bat_loc <- "C:\\Users\\n633164\\Documents\\R\\veibilder\\task.bat"
time <- "09:00"

system(sprintf('schtasks /create /sc %s /tn %s /tr "%s" /st %s', recurrence, task_name, bat_loc, time))

##Start på nytt
system(sprintf('schtasks /change /tn %s /enable', task_name))

##Sjekk jobber
system("control schedtasks")