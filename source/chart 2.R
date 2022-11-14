# This is the second chart.

library("tidyverse")
install.packages("stringr")
library("dplyr")
library("stringr")

SMH <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-jam860/main/data/Student%20Mental%20health%20%E2%80%94%E2%80%94database.csv")

SMH <- mutate(SMH, has_mental_illness = Do.you.have.Depression.== "Yes" | Do.you.have.Anxiety. == "Yes" | Do.you.have.Panic.attack. == "Yes")
SMH$has_mental_illness <- sub("TRUE","1",SMH$has_mental_illness)
SMH$has_mental_illness <- sub("FALSE","0",SMH$has_mental_illness)

relation_CGPA_mental <- SMH %>% 
  group_by(What.is.your.CGPA.) %>%
  summarize(percentage_mental_illness = sum(as.numeric(has_mental_illness)))

ggplot(data = relation_CGPA_mental, 
       aes(x= "", y=percentage_mental_illness, 
           fill=What.is.your.CGPA.))+ 
  geom_bar(stat = "identity") + 
  coord_polar("y")

#I decide to draw this pie chart because I want to explore the influence to student's
#mental health brought by academic pressure. This pie chart depicts the relationship 
#between student's CGPA and their mental health condition. It mainly uses  the 
#column of three different mental illness and CGPA. The final result shows that 
#students with higher CGPA normally more likely get mental illness. The reason is
#that maintaining high GPA is hard and stressed.
 
