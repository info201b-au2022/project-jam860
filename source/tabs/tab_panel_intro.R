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
    p("1. What factors increase the risk of mental health problems for college students?"),
    p("2. How have students taken care of their mental health through self-care?"),
    p("3. Is there a trend between CGPA and having a mental health disorder?"),
    h2("Data Analyzed"),
    p("We analyzed a multiude of factors when it comes to the student's mental health.
      We first observed the types of mental health disorders that impact students the most.
      We also looked at how students took care of themselves by looking at different methods of self-care. 
      Many of our data sets comes from student surveys which asks about how they're feeling about their mental health.
      We had a survey asking if students had any forms of stress, anxiety or depression. If those students had one of the following disorders,
      the survey would ask about their CGPA and their major. In addition, we also analyzed another survey about self-care. If a student 
      notified on the survey that they were struggling with their mental health, the survey would ask ways in which they 
      took care of themselves. These datasets can help us to answer some of the questions that we have."),
    h2("Key Findings"),
    p("There were several key findings. Aiming for a high CGPA while also being in a competitive major contributed to more problems for student's mental health.
      However, we saw that different ways of self-care including listening to music or playing video games can relief stress.
      Lastly, we saw the most popular ways to take care of one's mental health included the use of other technologies. These technologies ranged from using a TV,
      phone or another device. Mental health can be a difficult topic to topic about, but it's important that we all talk about it in some way, shape or form.")
)
