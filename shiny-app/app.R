## app.R ##
library(shiny)
library(shinydashboard)
library(shinydashboardPlus)
library(shinythemes)
library(shinyjs)
library(polished)


ui <- navbarPage(title = "Cloud Based Smart Apps",windowTitle = "Smart Apps Cloud",theme = shinytheme("cosmo"),
  fluidRow(
    tags$head(tags$link(rel="shortcut icon", href="https://upbeat-swartz-7f78a9.netlify.app/favicon.ico")),
    useShinyjs(),
    themeSelector(),
    userBox(
      width = 4,
      title = userDescription(
        title = "Smart Apps",
        subtitle = "Deployed on Google Cloud",
        type = 1,
        image = "https://avatars.githubusercontent.com/u/33904170?s=96&v=4",
      ),
      status = "black",
      closable = TRUE,
      "Check out our app portfolio",
      footer = ""
    ),
                        box(
                          title = "Competencies & Skills",
                          width = 4,
                          fluidRow(
                            accordionItem(
                              title = "R",width = 4,
                              status = "success",
                              collapsed = FALSE,
                              "Shiny",
                              br(),
                              "Plumber",
                              br(),
                              "ETL Notebooks"
                            ),
                            accordionItem(
                              title = "Python",width = 4,
                              status = "success",
                              collapsed = FALSE,
                              "Pandas",
                              br(),
                              "Flask",
                              br(),
                              "Django"
                          ),
                            accordionItem(
                              title = "Cloud",width = 4,
                              status = "danger",
                              collapsed = FALSE,
                              "AWS",
                              br(),
                              "GCP",
                              br(),
                              "Azure",
                              br(),
                              "Heroku"
                            )
                          ),
                          fluidRow(
                        box(
                          title = "Social Buttons",
                          width = 12,
                          socialButton(
                            href = "https://github.com/smart-apps-cloud",
                            icon = icon("github")
                          )
                        )
                          )
    ),
    box(
      title = "Software Demos",
      status = "primary",
      width = 4,
      userPost(
        id = 1,
        author = "Smart App Devs",image = "https://sunverasoftware.com/wp-content/uploads/2020/12/google-cloud-logo-2.png",
        description = "Deploy app on Google Cloud via Cloud Run",
        collapsible = FALSE,
        h4("App on GCP"),
        "Shiny web app in GCP Cloud run",
        br(),
        actionButton("gcp","View App",icon = icon("google"),onclick ="window.open('https://mattmajestic.io', '_blank')"),
        actionButton("gh","View Github",icon = icon("github"),onclick ="window.open('https://github.com/mattmajestic/gcp-resume', '_blank')"),
        userPostTagItems(
          userPostTagItem(dashboardLabel("SDLC: Minimal Viable Product", status = "primary")),
        )
      )
    )
  )
  
)

server <- function(input, output) { }

shinyApp(ui, server)