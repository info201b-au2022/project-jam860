# tab_panel_summary

library(shiny)

tab_panel_summary <-tabPanel(
  "Summary",
  h3("Summary"),
  br(),
  p("Going back to our introduction, one of our project questions were \"what factors increase the risk of mental health problems for college students?\" By using our dataset that included students with depression and anxiety, we found out
    which factors made students experience more stress or depression. Another question we had was \"how have students taken care of their mental health through self-care?\" We also used 
    another dataset about college students way of mentally taking care of themselves. Our dataset found the most popular forms of self-care and as well as the least popular forms. Our last question
    was \"is there a trend between CGPA and having a mental health disorder?\" Using the same dataset with students that had depression and anxiety, we saw a trend. The following keypoints are summarized below."),
  h3("Key points: "),
  p("1. Students that are in a difficult major such as engineering and have a CGPA higher than 3.0 are more likely to experience mental disorders such as depression or stress.  The takeaway is that those that are in STEM related majors and aiming for a higher CGPA have a higher chance of being impacted by mental health disorders."),
  p("2. The top 3 most practiced forms of self-care were listening to music, playing online/video games and watching web series for college students. A takeaway we can see is that the most popular of forms of self-care utilize technological devices like a computer, phone or TV."),
  p("3. The least 3 most practiced forms of self-care were cooking, talking to one's relatives and dancing for college students. A takeaway we can see is that the least popular forms of self-care doesn’t utilize technological devices like a computer, phone or TV."),
    tags$img(src = "https://raw.githubusercontent.com/info201b-au2022/project-jam860/main/source/www/disorder.png", height = 200, width = 400),
    tags$img(src = "https://raw.githubusercontent.com/info201b-au2022/project-jam860/main/source/www/self-care.png", height = 300, width = 400)
)