## HW02 - create database on POstgresql => create a few tables about pizza restaurants

## Following step need to be done before connect to database

library(RPostgreSQL)   ##Note: Install "SQL" library that is being used in the project
library(tidyverse)

##Connect to database 

connect <- dbConnect(PostgreSQL(), 
                 host = "bubble.db.elephantsql.com",
                 port = 5432,   ##Defult of postgresql Post is 5432
                 user = "*****",                         ## Hide user
                 password = "***********************",   ## Hide password
                 dbname = "*****")                    ## Hide dbname

# // dbListTables(connect) : used to list tables in database

#-prepare tables before upload to database-#
pizza_menus <- data.frame(menu_id=1:6, 
                          c("Hawaiian", "Pepperoni Lover's", "Meat Lover's", "Veggie Lover's", "Canadian", "Supreme Lover's"))

price_lists <- data.frame(price_id=1:3,
                          c("small", "medium", "large"),
                          c(12.99, 19.99, 24.99))
#------------------------------------------#

##Write tables in database
dbWriteTable(connect, "pizza_menu", pizza_menus)
dbWriteTable(connect, "price", price_lists)

##Get data (Query)
dbGetQuery(connect, "select * from pizza_menu")


##Delete tables in database
#-dbRemoveTable(object, "table name")

##Close connection?
dbDisconnect(connect)
