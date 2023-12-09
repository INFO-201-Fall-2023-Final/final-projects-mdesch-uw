library(dplyr)
library(stringr)
library(ggplot2)
library(shiny)
library(plotly)

df <- read.csv("booksheet.csv")

# Define the first page content; uses `tabPanel()` and `sidebarLayout()`
# layout functions together (as an example)
page_one <- tabPanel(
  "First Page", # label for the tab in the navbar
  titlePanel("Page 1"), # show with a displayed title
  
  h3("Food & Housing Insecurity"),
  
  p("It’s common knowledge that college is expensive; 
        many students need a large amount of financial aid or to take out loans, 
        often both, in order to cover the cost of tuition and housing. Even then, 
        some still need to work full time to make ends meet. This was not always 
        the case; colleges have gotten more expensive over time, far more expensive
        in fact. For many students the question becomes completing their education or 
        being able to eat, or have secure housing. This issue has only been 
        exacerbated over time, especially by the COVID-19 pandemic and lockdown."),
  
  br(), 
  
  p("A study conducted by Western Washington University in 2022 across 39 colleges
  and universities in Washington State determined that 38.3% of students experienced
  some level of food insecurity within the last 30 days alone, while 34.2% of students
  experienced housing insecurity, and these numbers are only increasing. While students 
  being unable to eat or losing their housing is a serious issue, even less extreme levels
  of food insecurity can have drastic effects on their livelihood; students who have a poor 
  diet due to a lack of access to healthy food options experience physical and mental 
  health side effects, such as low energy levels and higher stress. 
  These issues, alongside increased worries about food in general, can cause 
  students' grades to drop. In addition, if students are struggling with school 
  due to food and housing insecurity, they are more likely to drop out due to 
  the high cost of attendance; this widens the socioeconomic educational gap, 
  making it even harder for students without a lot of financial support from 
  their families to attend college."),
  
  br(),
  
  p("For the remainder of these pages, we will be examining this upward trend
        for it's causes and effects, as well as the implications of these changes.")
    )
  


# Define content for the second page
page_two <- tabPanel(
  "Second Page", # label for the tab in the navbar
  titlePanel("Page 2"), # show with a displayed title
  sidebarLayout(
    sidebarPanel(plotlyOutput(outputId = "column")
    ),
    mainPanel(
      h3("Food Insecurity by Demographics"),
      p("Students are already a vulnerable demographic for these insecurities; this is
        because of the high cost of tuiton and housing, and the fact that most students 
        have no secure and sufficiently paying source of income. This is because of the 
        requirements for these jobs often including a college degree, and the lack of 
        time to work a full-time job. However, certain demographics are even more vulnerable
        to these issues."), 
      
      br(),
      
      ("To the left, a bar plot showcases the food insecurity rates of students by ethnicity.
       This difference is important to be aware of with these kinds of issues; it's clear that
       while all students are impacted by these effects, certain communities are far more 
       affected. This is also noteworthy because college is already more exclusive to
       nonwhite students, so food and housing insecurity rates are another way that college
       can be limited in diversity."),
    )
  )

  # ...more content would go here...
)

# Define content for the third page
page_three <- tabPanel(
  "Third Page", # label for the tab in the navbar
  titlePanel("Page 3"), # show with a displayed title
  h3("COVID-19's effect on students"),
  p("Research shows that half of all college students across the country are 
        likely to experience some level of food or housing insecurity throughout 
        the duration of their education. Additionally, it has been observed that 
        COVID-19 exacerbated issues of food insecurity and housing insecurity for 
        all demographic groups, but that youths aged 18-24, the typical age of 
        college students, were most vulnerable in these cases due to campus shutdowns 
        depriving students of housing and food sources, and the likelihood of 
        unemployment or loss of jobs during this period."),
)

# Define content for the fourth page
page_four <- tabPanel(
  "Fourth Page", # label for the tab in the navbar
  titlePanel("Page 4"), # show with a displayed title
  # ...more content would go here...
)

# Pass each page to a multi-page layout (`navbarPage`)

ui <- navbarPage(
  "My Application", # application title
  page_one,         # include the first page content
  page_two,         # include the second page content
  page_three,        # include the third page content
  page_four         # include the fourth page content
)
server <- function(input, output, session) {
  output$column <- renderPlotly({ 
    p <- ggplot(data, aes(x=Ethnicity, y=Food_Insecurity_Rate)) + 
      geom_bar(stat = "identity")
    })
}


shinyApp(ui, server)

