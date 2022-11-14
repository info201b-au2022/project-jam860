# This source file creates a table of summary information for one of our datasets to be included in our 
# report
library("ggplot2")
library("tidyverse")
library("stringr")

dataset <- read.csv("/Users/jnguy/Documents/info201/projects/project-jam860/data/COVID-19 Survey Student Responses.csv")


table <- dataset %>% 
  select(Age.of.Subject, Time.spent.on.fitness, Time.spent.on.sleep, Time.spent.on.TV, 
         Do.you.find.yourself.more.connected.with.your.family..close.friends...relatives..., Number.of.meals.per.day) %>%
  rename(age = Age.of.Subject, time_sleeping = Time.spent.on.sleep, meals_per_day = Number.of.meals.per.day,
         connection_with_others = Do.you.find.yourself.more.connected.with.your.family..close.friends...relatives...) %>%
  group_by(age, connection_with_others) %>%
  summarize(time_sleeping_per_day = round(mean(time_sleeping), digits = 2), 
            meals_per_day = round(mean(meals_per_day), digits = 2)) %>%
  filter(age <= 24 & age >= 18)

table$connection_with_others <- tolower(table$connection_with_others)
table$connection_with_others <- str_to_title(table$connection_with_others)
View (table)
