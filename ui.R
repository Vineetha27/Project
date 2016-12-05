library(shiny)

shinyUI(fluidPage(
  titlePanel(title=div(img(src="la311_icon.png", height = 70, width = 70), "LA 311 CALL CENTRE DATA ANALYSIS")),
  
  tabsetPanel(
    tabPanel(title = "Historical Data Trends",
             plotOutput("p1_1"),
             hr(),
             plotOutput("p1_2"),
             hr(),
             plotOutput("p1_3"),
             hr(),
             plotOutput("p1_4"),
             hr(),
             plotOutput("p1_5")),
    
    
    tabPanel(title = "Current Scenario",
             wellPanel(
               sliderInput(inputId = "slider1", 
                           label = "Choose a month",
                           value = 1,
                           min = 1,
                           max = 12), 
               actionButton(inputId = "button1", label = "Overall Trend")),
             hr(),
             plotOutput("p2_1"),
             hr(),
             selectInput(inputId = "select_0", 
                         label = "Select Request Type", 
                         choices = list("Bulky Items" = 0, "Graffiti Removal" = 1, "Animal Removal" = 2, "Illegal Dumping" = 3, "Metal/Household Appliances" = 4, "Electronic Waste" = 5), 
                         selected = 0),
             plotOutput("p2_2"),
             hr(),
             selectInput(inputId = "select", 
                         label = "Select Request Source", 
                         choices = list("Overall" = 0, "Call" = 1, "Mobile App" = 2, "Email" = 3, "Driver Self-Report" = 4, "Self Service" = 5), 
                         selected = 0),
             plotOutput("p2_3", height = "600px")),
    
    
    tabPanel(title = "Geographic Trends",
             h5("Top 10 Areas for Various Request Types", align = "center"),
             plotOutput("p3_1"))
  )

))
