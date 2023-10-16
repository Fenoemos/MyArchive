# HW01 - Ask 5 questions about flights dataset
## Following step need to be done before explore data
### install package that our dataset live, named 'flights', in 'nycflights13'
### install package 'dplyr' for data manipulation
### call library and begin explore

library(tidyverse)
library(nycflights13)
# library(dplyr) already install with tidyverse

View(flights)
head(flights)

## Q1: What is top 3 carrier from JFK to SFO in May 2013
flights %>%
  filter(origin == "JFK" & dest == "SFO" & year == 2013 & month == 5) %>%
  group_by(carrier) %>%
  count(carrier) %>%
  arrange(-n) %>%
  head(3) %>%
  left_join(airlines)

## Q2: What is top 10 destinations that can travel within 1000 miles
airport_name <- airports %>%
  rename(dest = faa) %>%
  select(dest, name)

flights %>%
  group_by(dest) %>%
  filter(distance <1000) %>%
  summarise(n=n()) %>%
  arrange(-n) %>%
  head(10) %>%
  left_join(airport_name)

## Q3: What is top 3 carrier that have minimum travel time from JFK to SFO
flights %>%
  filter(origin == "JFK" & dest == "SFO") %>%
  group_by(carrier) %>%
  summarise(time_travel = min(air_time, na.rm=T)) %>%
  arrange(time_travel) %>%
  head(3) %>%
  left_join(airlines)

## Q4: What is top 5 longest travel distance
airport_name <- airports %>%
  rename(dest = faa) %>%
  select(dest, name)

flights %>%
  select(dest, distance) %>%
  group_by(dest) %>%
  summarise(longest_distance = max(distance)) %>%
  arrange(-longest_distance) %>%
  head(5) %>%
  left_join(airport_name)

## Q5: Total airtime for each destinations, sort by A-Z
flights %>%
  select(dest, air_time)%>%
  filter(air_time != "NA") %>%
  group_by(dest)%>%
  summarise(total_air_time = sum(air_time)) %>%
  arrange(total_air_time)
