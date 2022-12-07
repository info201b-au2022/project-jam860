#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

source("tabs/tab_panel_intro.R")
source("tabs/tab_panel_chart1.R")
source("tabs/tab_panel_chart2.R")
source("tabs/tab_panel_chart3.R")
source("tabs/tab_panel_summary.R")
source("tabs/tab_panel_report.R")

ui <- navbarPage(
  title = "Eliminating the Stigma",
  position = "fixed-top",
  tags$style(HTML(" body {background-color: #fffff0;}")),
  tags$style(HTML(".navbar-default {background-color: #fffacd;}")),
  
  
  # A simple footer
  footer = list(
    tags$style(type = "text/css", "body {padding-top: 70px;}"),
    hr(),
    HTML("Eliminating the Stigma Surrounding Mental Health | Final Deliverable | INFO 201 | Autumn 2022 | James Nguyen, Shradha Shankar, Alex Chen"),
    hr()
  ),

  # The project introduction
  tab_panel_intro,

  # The three charts
  tab_panel_chart1,
  tab_panel_chart2,

  # The project summary
  tab_panel_summary,

  # The project report
  tab_panel_report
)
