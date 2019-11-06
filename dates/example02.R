#----------------------------------------------
# Comprehensive date package: Lubridate 
# https://evoldyn.gitlab.io/evomics-2018/ref-sheets/R_lubridate.pdf
# https://lubridate.tidyverse.org/ 
#----------------------------------------------
#install.packages("lubridate")
library(lubridate)

# Create dates and time
t0 <- dmy_hms("1 Jan 2017 23:45:11")
t1 <- dmy_hms("1 Jan 2020 23:45:22")

# Many fuctions for operating on dates, including am() and pm()
if(am(t0) == TRUE) {
  print(paste0("This is in the morning! (",t,")"))
} else {
  print(paste0("This is in the evening! (",t,")"))
}

# Which quater is it? 
print(quarter(t0)) 

# Get components of date
# How many seconds, minutes, hours, etc. --  second(), minute(), year()
print(second(t0))

# Set components of date
# You can change elements of a date, with year(), hour(), minute(), etc. 
hour(t0) <- 55
print(t0)

# Work with durations - which measure the exact amount of time between two points
print(today() + dweeks(2))    # two weeks from today
print(today() - years(1))     # one year ago

# Work with timezones 
now(tzone="America/Bogota")
now(tzone="Europe/Oslo")
