managers_data <- read.csv("managers.csv")
new_managers_data <- read.csv("moreData.csv")

str(managers_data)
str(new_managers_data)

names(managers_data)
names(new_managers_data)

include_list <- new_managers_data[c("Date", "Country", "Gender", "Age", "Q1","Q2", "Q3", "Q4", "Q5")]
include_list

include_list <- new_managers_data[c(6,3,7,4,8:12)]
include_list
rbind(managers_data, include_list)

names(managers_data)
names(include_list)

str(managers_data)
str(include_list)

date_format <- "%m/%d/%y"
new_date_format <- "%d/%m/%y"
formatted_date <- format(as.Date(include_list$Date,format = date_format, new_date_format))
formatted_date

formatted_date <- as.Date(include_list$Date,format = "%m/%d/%Y")


class(formatted_date)

include_list$Date=formatted_date
include_list$Date
str(include_list)

attach(include_list)
include_list$AgeCat[include_list$Age >= 45] <- "Elder"
include_list$AgeCat[include_list$Age >= 26 & include_list$Age <= 44] <- "Middle Aged"
include_list$AgeCat[include_list$Age <= 25] <- "Young"
include_list$AgeCat[is.na(include_list$Age)] <- "Elder"
detach(include_list)
include_list


date_format <- "%m/%d/%y"
new_date_format <- "%d/%m/%y"
formatted_date <- format(as.Date(managers_data$Date,format = date_format, new_date_format))
formatted_date

formatted_date <- as.Date(managers_data$Date,format = "%m/%d/%y")


class(formatted_date)
str(managers_data)

managers_data$Date=formatted_date
managers_data$Date


managers_data = managers_data[c(2:11)]
managers_data 

managers_data <- rbind(managers_data, include_list)
head(include_list)
head(managers_data)
