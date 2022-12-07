# tab_panel_summary

library(shiny)

tab_panel_summary <-tabPanel(
  "Summary",
  h3("Key Points"),
  br(),
  p("1. The top 3 most practiced forms of self-care were listening to music, playing online/video games and watching web series for college students. A takeaway we can see is that the most popular of forms of self-care utilize technological devices like a computer, phone or TV."),
  p("2. Students that are in a difficult major such as engineering and have a GPA higher than 3.0 are more likely to experience mental disorders such as depression or stress.  The takeaway is that those that are in more STEM related majors and aiming for a higher GPA has a higher toll on the person's mental health."),
  p("3. The least 3 most practiced forms of self-care were cooking, talking to one's relatives and dancing for college students. A takeaway we can see is that the least popular forms of self-care doesn’t utilize technological devices like a computer, phone or TV."),
    img(src = 'www/disorder.png'),
    img(src = 'www/self-care.png')
)