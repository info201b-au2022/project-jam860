# This is the third chart.

library("ggplot2")
library("tidyverse")
library("stringr")

 district_mental_health <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-jam860/main/data/District_Wise_Mental_Health_Patients_2021-22.csv",stringsAsFactors = FALSE )
 view(district_mental_health)
 district_totals <- district_mental_health$Total
 
 
 chart_3 <- dotchart(district_totals,labels= district_mental_health$DISTRICT,cex=.7, bg = "green",
          main="Mental Health Cases in Different Districts", 
          xlab="District Total Cases")

# I included this chart to show how many cases of mental health issues ranging from mild to extremely severe in every district.
# This is very useful information as it
#
#