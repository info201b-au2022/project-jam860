# This source file calculates summary information to be included in our reports.
library(tidyverse)
district_mental_health <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-jam860/main/data/District_Wise_Mental_Health_Patients_2021-22.csv",stringsAsFactors = FALSE )
view(district_mental_health)


Max_Cases <- district_mental_health %>%
  filter(Total == max(Total))%>%
  select(Total)


Max_Cases_District <- list(district_mental_health %>%
                              filter(Total == max(Total))%>%
                              select(DISTRICT))

Highest_Suicide_Cases <-  list(district_mental_health %>%
                                 filter(SUICIDE_ATTEMPT_CASES == max(SUICIDE_ATTEMPT_CASES))%>%
                                 select(SUICIDE_ATTEMPT_CASES))


Highest_Suicide_District <- list(district_mental_health %>%
                                    filter(SUICIDE_ATTEMPT_CASES == max(SUICIDE_ATTEMPT_CASES))%>%
                                    select(DISTRICT))


highest_common_diagnosis_cases <- list(district_mental_health %>%
                                          filter(COMMON_MENTAL._DISORDER.CMD. == max(COMMON_MENTAL._DISORDER.CMD.))%>%
                                          select(COMMON_MENTAL._DISORDER.CMD.))





summury_info <- list(Max_Cases, Max_Cases_District, Highest_Suicide_Cases, Highest_Suicide_District, highest_common_diagnosis_cases)

names(summury_info) <- c("Max_Cases", "Max_Cases_District", "Highest_Suicide_Cases", "Highest_Suicide_District", "highest_common_diagnosis_cases")

view(summury_info)
                  

