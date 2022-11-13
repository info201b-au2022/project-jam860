# This is the first chart.

# install.packages("ggplot2")
# install.packages("stringr")
library("ggplot2")
library("tidyverse")
library("stringr")

data_all <- read.csv("/Users/jnguy/Documents/info201/projects/project-jam860/data/COVID-19 Survey Student Responses.csv")
data_all <- rename(data_all, self_care = Stress.busters)

data <- data_all %>%
  select(self_care) %>%
  group_by(self_care) %>%
  summarize(students = length(self_care)) %>%
  filter(students >= 50) %>%
  arrange(desc(students))

ggplot(data, aes(x = reorder(self_care, students), y = students)) +
  labs(y = "Students", x = "Methods of Self Care") +
  geom_bar(fill= "pink", color = "pink", stat ="identity") +
  coord_flip()
