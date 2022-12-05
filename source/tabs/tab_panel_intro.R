# tab_panel_intro

library(shiny)

tab_panel_intro <-tabPanel(
    "Introduction",
    titlePanel("Introduction"),
    fluidPage(
      tags$img(src = "https://d2jx2rerrg6sh3.cloudfront.net/image-handler/ts/20220124072653/ri/950/src/images/Article_Images/ImageForArticle_22028_16430272124432966.jpg", height = "400", width = "500"),
    ),
    h2("Overview"),
    p("Mental health plays a vital role in student's lives. To help improve the mental health of other students,
        we are exploring data and analyzing how mental health impacts students, methods of self-care students partake in,
        and where mental health problems occur the most often. We will be looking at data sets that consist of college students in India.
        After looking over this data, we will be able to learn ways in which we can provide good resources for students including self-care,
        and think of ways in which students further take care of their mental health."),
    h2("Research Questions"),
    p("1. What are the most common mental health problems students are facing?"),
    p("2. How have students taken care of their mental health through self-care?"),
    p("3. In which parts of India does mental health have a greater toll on?"),
    h2("Data Analyzed"),
    p("We analyzed a multiude of factors when it comes to the student's mental health.
      We first observed the types of mental health disorders that impact students the most.
      We also looked at how students took care of themselves by looking at different methods of self-care.
      Finally, we looked at the different districts in India and observed which locations were being impacted
      the most."),
    h2("Key Findings"),
    p("There were several key findings. Depression and Stress were the top mental health disorders that students often faced.
      However, we saw that different ways of self-care including listening to music or playing video games can relief stress.
      Lastly, we saw that the cities with prestigious colleges in India often resulted in more students having mental health students.
      Mental health can be a difficult topic to topic about, but it's important that we all talk about it in some way, shape or form.")
)
