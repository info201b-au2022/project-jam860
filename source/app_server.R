#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

course_input_chart2 <- selectInput(
  inputId = "course_input",
  label = "Course Kind",
  choices = c("Engineering", "Islamic education", "BIT", "Laws",
              "Pendidikan islam","BCS","Irkhs","KENMS","KOE"),
  selected = "Engineering"
)


server <- function(input, output) {
  output$chart1 <- renderPlotly({
    data_all <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-jam860/main/data/COVID-19%20Survey%20Student%20Responses.csv")
    data_all <- rename(data_all, self_care = Stress.busters)
    data <- data_all %>%
      select(self_care) %>%
      group_by(self_care) %>%
      summarize(students = length(self_care)) %>%
      subset(self_care %in% input$checkGroup)
    
    fig <- data %>%
      plot_ly(
        x = ~reorder(self_care, -students),
        y = ~students,
        name = "test",
        type = "bar",
        hovertemplate = paste('Method of Self-Care: %{x}<br>', 
                              '<br>Students: %{y}<extra></extra>') 
      ) %>%
      layout(xaxis  = list(title = "Methods of Self-Care"),
             yaxis = list(title = "Number of Students"))
    return(fig)
    
  })
  
  output$chart2 <- renderPlotly({
    SMH <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-jam860/main/data/Student%20Mental%20health%20%E2%80%94%E2%80%94database.csv")
    SMH <- rename(SMH, CGPA_data = What.is.your.CGPA.)
    SMH <- mutate(SMH, has_mental_illness = Do.you.have.Depression.== "Yes" | Do.you.have.Anxiety. == "Yes" | Do.you.have.Panic.attack. == "Yes")
    SMH$has_mental_illness <- sub("TRUE","1",SMH$has_mental_illness)
    SMH$has_mental_illness <- sub("FALSE","0",SMH$has_mental_illness)
    
    data2 <- SMH %>%
      filter(What.is.your.course. == input$course_input) %>%
      group_by(CGPA_data) %>%
      summarize(total_num_mental_illness = sum(as.numeric(has_mental_illness))) 
    
    chart2 <- plot_ly(data2, labels= ~CGPA_data, values = ~total_num_mental_illness, type = 'pie') %>%
      add_annotations(
        y = 1, 
        x = 0.1, 
        text ="% of students with Mental Health Disorder", 
        showarrow = F,
        font = list(size = 10)
      )
    chart2
  })
}
  
  #add more charts here


