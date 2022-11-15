# This source file calculates summary information to be included in our reports.
library(tidyverse)
district_mental_health <- read.csv("/Users/shradhashankar/Documents/info201/assignments/project-jam860/data/District_Wise_Mental_Health_Patients_2021-22.csv",stringsAsFactors = FALSE )
view(district_mental_health)





summury_info <- list("Max Cases" = district_mental_health %>%
                         filter(Total == max(Total))%>%
                         select(Total), "Max Cases District" = list(district_mental_health %>%
                                                                      filter(Total == max(Total))%>%
                                                                      select(DISTRICT)), "Highest Suicide Cases" = list(district_mental_health %>%
                                                                                                                          filter(SUICIDE_ATTEMPT_CASES == max(SUICIDE_ATTEMPT_CASES))%>%
                                                                                                                          select(SUICIDE_ATTEMPT_CASES)), "Highest Suicide District" = list(district_mental_health %>%
                                                                                                                                                                                              filter(SUICIDE_ATTEMPT_CASES == max(SUICIDE_ATTEMPT_CASES))%>%
                                                                                                                                                                                              select(DISTRICT)), "highest common diagnosis cases" = list(district_mental_health %>%
                                                                                                                                                                                                                                                           filter(COMMON_MENTAL._DISORDER.CMD. == max(COMMON_MENTAL._DISORDER.CMD.))%>%
                                                                                                                                                                                                                                                           select(COMMON_MENTAL._DISORDER.CMD.))       )



view(summury_info)
                  

