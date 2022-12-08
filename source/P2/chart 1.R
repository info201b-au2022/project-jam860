# This is the first chart.

# install.packages("ggplot2")
# install.packages("stringr")
library("ggplot2")
library("tidyverse")
library("stringr")

data_all <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-jam860/main/data/COVID-19%20Survey%20Student%20Responses.csv")
data_all <- rename(data_all, self_care = Stress.busters)

View(data)
View(data_all)
data <- data_all %>%
  select(self_care) %>%
  group_by(self_care) %>%
  summarize(students = length(self_care)) %>%
  filter(students >= 20) %>%
  arrange(desc(students)) 

chart_1 <- ggplot(data, aes(x = reorder(self_care, -students), y = students)) +
  labs(y = "Students", x = "Methods of Self Care") +
  geom_bar(fill= "pink", color = "pink", stat ="identity") +
  coord_flip()

# I included this chart because I wanted to know the most popular ways in which
# students tended to their mental health through self-care. We believe that 
# there are many ways to take care of one's mental health that they can do either
# at home or by themselves. This bar graph reveals the top 7 methods that people 
# do to take care of their mental health. I also chose a horizontal bar graph to
# make the groups more readable. In addition, 
