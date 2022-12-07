# tab_panel_report

library(shiny)
library("markdown")

tab_panel_report <-tabPanel(
  "Report",

  fluidRow(
      6,
      includeMarkdown("tabs/report.md")
  )


)

