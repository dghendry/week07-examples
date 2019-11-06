# Dates
#----------------------------------------------
# Demonstration of using these two functions for
# dates: 
#       as.Date() Function 
#       format() function 
#
# Reasonable google searches: 
#    "r date format"
#    "date functions in r"
#
# A good list of results:
#    https://www.statmethods.net/input/dates.html
#    https://www.rdocumentation.org/packages/base/versions/3.6.1/topics/as.Date
#    https://www.r-bloggers.com/date-formats-in-r/ 
#----------------------------------------------

#----------------------------------------------
# This table shows how symbols can be used to 
# convert strings into dates and to format 
# dates 
#----------------------------------------------

# Symbol	Meaning	                  Example
# %d	    day as a number (0-31)	  01-31
# %a      abbreviated weekday       Mon
# %A	    unabbreviated weekday	    Monday
# 
# %m	     month (00-12)	          00-12
# %        babbreviated month       Jan
# %B	     unabbreviated month	    January
# 
# %y       2-digit year              07
# %Y	     4-digit year              2007

# Default format case
date_string_format1 <- c ("2017-07-31", "2017-07-30", "2017-07-29", "2017-07-28")
dates1 <- as.Date(date_string_format1)
print(dates1)

# Giving as.Date() a format for making the convestion
date_string_format2 <- c ("07-31-2017", "07-30-2017", "07-29-2017", "07-28-2017")
dates2 <- as.Date(date_string_format2, format = "%m-%d-%Y")
print(dates2)

# Another format
date_string_format3 <- c ("07/31/17", "07/30/17", "07/29/17", "07/28/17")
dates3 <- as.Date(date_string_format3, format = "%m/%d/%y")
print(dates3)

# The argument tryFormats can be used to try different formats
date_string_format4 <- c("07-31/2017", "07-30/2017", "07-29/2017", "07-28/2017")
dates4 <- as.Date(date_string_format4, tryFormats=c("%m/%d/%y", "%m-%d/%Y", "%m-%d-%Y"))
print(dates4)

# Elegant format "Friday, July 28, 2017"
print(format(dates4, "%A, %B %d, %Y"))

# Just take of the week
print(format(dates4, "%a"))

# Using Sys.Date() - gets today's date
print(format(Sys.Date(),"%m/%d/%y"))