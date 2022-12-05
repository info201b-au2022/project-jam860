#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

server <- function(input, output) {
  output$chart1 <- renderPlotly({
    data_all <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-jam860/main/data/COVID-19%20Survey%20Student%20Responses.csv")
    data_all <- rename(data_all, self_care = Stress.busters)
    data <- data_all %>%
      select(self_care) %>%
      group_by(self_care) %>%
      summarize(students = length(self_care)) %>%
      subset(self_care %in% input$checkGroup)
    
    chart1 <- ggplot(data, aes(x = reorder(self_care, students), y = students)) +
      labs(y = "Students", x = "Methods of Self Care") +
      geom_bar(fill= "pink", color = "pink", stat ="identity") 
    
    return(ggplotly(chart1))
    
  })
  
  #add more charts here
}


