# This is the third chart.

library("ggplot2")
library("tidyverse")
library("stringr")

 district_mental_health <- read.csv("/Users/shradhashankar/Documents/info201/assignments/project-jam860/data/District_Wise_Mental_Health_Patients_2021-22.csv",stringsAsFactors = FALSE )
 view(district_mental_health)
 district_totals <- district_mental_health$Total
 
 
 dotchart(district_totals,labels= district_mental_health$DISTRICT,cex=.7, bg = "green",
          main="Mental Health Cases in Different Districts", 
          xlab="District Total Cases")

