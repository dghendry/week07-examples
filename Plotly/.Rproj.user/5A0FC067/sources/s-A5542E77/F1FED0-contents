# filename: example01.R
#----------------------------------------------
# Gives examples of using lapply() and with() 
# from Base R and mutate() from the dplyr 
# package
#----------------------------------------------
library(dplyr)

#----------------------------------------------
# This function makes a string of a person's name
# and age, formatted like this:
#   Name: <a name> (<age>)
# Examples:
#   Name: Dave (10)
#   Name: Jill K. Fitzmann (15)
#----------------------------------------------
make_name_string <- function(the_name, df) {
  the_age <- df[df$names == the_name, "ages"]
  title <- paste0("Name: ", the_name, "(", the_age, ")")
  return(title)
}

#----------------------------------------------
# A data frame of names and ages
#----------------------------------------------
init_people_df <- function() {
  df <- data.frame(
    names = c("Dave", "Fred", "Jill K. Fitzmann", "Jack", "Mary"),
    ages = c(10, 20, 15, 43, 14),
    stringsAsFactors = FALSE
  )
  return(df)
}

#----------------------------------------------
# Test: Make a set of titles by using lapply() and add
# a new column to the data frame
#----------------------------------------------
people_df <- init_people_df()
t_vector <- lapply(df$names, make_name, df)
people_df$titles <- t_vector
print(people_df)

#----------------------------------------------
# Test: Same thing with dplyr
#----------------------------------------------
people_df <- init_people_df()
new_df <- people_df %>%
  mutate(titles = paste0("Name: ", people_df$names, "(", people_df$ages, ")"))

#----------------------------------------------
# Test: Same thing with the with() function
#----------------------------------------------
people_df <- init_people_df()
t_vector <- with(people_df, paste0("Name:", names, "(", ages, ")"))
people_df$titles <- t_vector
print(people_df)

#----------------------------------------------
# Test: Same thing, compactly
#----------------------------------------------
people_df <- init_people_df()
people_df$titles <- with(people_df, paste0("Name:", names, "(", ages, ")"))
print(people_df)

