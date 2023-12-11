library(dplyr)
library(stringr)
library(ggplot2)
library(shiny)
library(plotly)

df <- read.csv("booksheet.csv")

# Define the first page content; uses `tabPanel()` and `sidebarLayout()`
# layout functions together (as an example)
page_one <- tabPanel(
  "About", # label for the tab in the navbar
  titlePanel("About"), # show with a displayed title
  
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
  "by Demographics", # label for the tab in the navbar
  titlePanel("by Demographics"), # show with a displayed title
  sidebarLayout(
    sidebarPanel(plotlyOutput(outputId = "column"),
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
      
      p("To the left, a bar plot showcases the food insecurity rates of students by ethnicity.
       We can see that Black/African American and American Indian are the two groups experiencing
       the highest food insecurity rates (56.0 and 52.2, respectively), whereas Asian American and White, 
       the two groups with the lowest rates, have rates of 29.7 and 34.8, respectively. 
       This difference is important to be aware of with these kinds of issues; it's clear that while
       all students are impacted by these effects, certain communities are far more 
       affected."),
      
      br(),
      
      p("Food and housing insecurity rates are a way that colleges can be more exclusive
       towards non-white students; there are a variety of socie-economic reasons that certain groups are more
       vulnerable to food insecurity. For example, food deserts are areas where nutritious and
       affordable food are difficult to find. These typically are low-income communities, and/or 
       predominantly non-white communities. Combining issues like these with the already existing
       inequalities in terms of attending college for marginalized communities, it is clear that
       while all students are affected, some are significantly more affected than others.")
    )
  )
)

# Define content for the third page
page_three <- tabPanel(
  "After COVID-19", # label for the tab in the navbar
  titlePanel("After COVID-19"), # show with a displayed title
  sidebarLayout(
    sidebarPanel(plotlyOutput(outputId = "line"),
    ),
    mainPanel(
    h3("COVID-19's effect on students"),
    p("Research shows that half of all college students across the country are 
        likely to experience some level of food or housing insecurity throughout 
        the duration of their education. Additionally, it has been observed that 
        COVID-19 exacerbated issues of food insecurity and housing insecurity for 
        all demographic groups, especially for younger people"),
    
    br(),
    
    p("The graph on the left shows a study performed by Oregon State University 
         on the Food Insecurity rates among different age groups from 2019 to 2021.
         We can observe that the group including the typical age of collge students, 
         represented here by the dark red line, was the most vulnerable, 
         experiencing a tripling of its Food Insecurity percentage from 4.50% to 13.5%. 
         The other two lines exhibited a 
         similar increase, rising from 4.2% to 9.2% and 2.7% to 6.9%, respectively."),
    
    br(),
    
    p("While other age groups did show an increase in food insecurity rates, 
      these increases were less drastic (both roughly doubling). The chart clearly demonstrates
      that COVID-19 had an extremely significant effect on student food
      insecurity. We believe that this severe phenomenom was caused by campus shutdowns depriving students of housing 
        and food sources, and the likelihood of unemployment or loss of jobs during this 
        period. In comparison, these percentages decrease as age increases.")
    )
  )
)

# Define content for the fourth page
page_four <- tabPanel(
  "Solutions", # label for the tab in the navbar
  titlePanel("Solutions"), # show with a displayed title
  h3("Solutions and Predictions"),
  p("Students struggling financially is not a new phenomenon, but it has been 
  exacerbated by the COVID-19 pandemic. Campus shutdowns have cut off many 
  students from their planned housing and food resources, as well as from 
  resources such as food pantries or campus work opportunities to offset the 
  cost of food. Similarly, most college students do not have a very secure or 
  lucrative job, and they are in the demographic that is most likely to lose 
  their jobs during the pandemic. Much like the overall issue, these issues are 
  even worse for vulnerable communities, which are hit harder and take longer to 
  recover from situations such as these. "),
  
  br(),
  
  p("These issues could be fixed; cheaper tuition, more financial aid and support 
  for students, more resources such as food banks or free meals or housing, and 
  government student debt relief would vastly alleviate these stressors for so 
  many students. But until there is a strong economic incentive for these 
  institutions to do so, such as a sharp downtick in student enrollment due to 
  prohibitive cost, the prices seem set to continue to rise higher.")
  # ...more content would go here...
)

page_five <- tabPanel(
  "Overview", # label for the tab in the navbar
  titlePanel("Overview"), # show with a displayed title
  h3("Why Care?"),
  p("High education costs force many college students to make a challenging choice
  between meeting their basic living needs and pursuing higher academic degrees, 
  resulting in food and housing insecurity. Studies have shown that all ethnicities 
  encountercommunities with lower incomes or predominantly non-white residents face
    more severe circumstances; this might significantly impacting these groups' access to colleges."),
  
  br(),
  
  h3("Our Thoughts"),
  p("As a student at University of Washington, where we have a diverse student body
   representing various ethnicities, it's crucial to acknowledge the significance of this issue.
  There are actionable steps that can address this problem; with a strong economic incentive, 
    institutions could offer increased financial aid and support for students in need. This approach
    would alleviate the burden on students, removing the need to choose between their basic
    life necessities and pursuing their studies.")
)

# Pass each page to a multi-page layout (`navbarPage`)

ui <- navbarPage(
  "Food Insecurity", # application title
  page_one,         # include the first page content
  page_two,         # include the second page content
  page_three,        # include the third page content
  page_four,         # include the fourth page content
  page_five,         # include the fifth page content
)
server <- function(input, output, session) {
  output$column <- renderPlotly({ 
    p <- ggplot(data, aes(x=Ethnicity, y=Food_Insecurity_Rate, fill = Ethnicity)) + 
      geom_bar(stat = "identity") 
    })
  output$line <- renderPlotly({
    o <- ggplot(data2, aes(x=Year)) + 
      geom_line(aes(y = Percentage.Insecurity), color = "darkred") + 
      geom_line(aes(y = Age46.64), color="steelblue") +
      geom_line(aes(y = Age65), color="darkgreen") +
      labs(x = "Year",
           y = "Food Insecurity (%)",
           color = "Legend") 
  })
}


shinyApp(ui, server)

