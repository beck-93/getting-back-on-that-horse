# installing the dslabs package
install.packages(c("dslabs","tidyverse")
install.packages("devtools")
install.packages("lubridate")
devtools::install_github("UrbanInstitute/urbnmapr")
                 # loading the dslabs package into the R session
                 library(dslabs,tidyverse)
                 library(lubridate)
                 library(devtools)
                 library(stats)
                 library(foreign)
                 library(readr)
                 library(xlsx)
                 library(ggplot2)
                 library(readxl)
                 X20182020STD <- read_excel("~NSG586/rstudio/20182020STD.xlsx")
                 #object structure
                 str(X20182020STD)
                 #object type
                 class(X20182020STD)
                 #1st 6 lines of dataset
                 head(X20182020STD)
                 #age groups
                 X20182020STD$`Age Group`
                 #variable names
                 names(X20182020STD)
                 #entries per vector
                 Age <- X20182020STD$`Age Group`
                 STD <- X20182020STD$`Final Condition`
                 Year <- X20182020STD$`MMWR YEAR`
                 Reportweek <- X20182020STD$Reportweek
                 Year <- as.numeric(Year)
                 Week <- as.numeric(X20182020STD$`MMWR WEEK`)
                 ID <- as.numeric(X20182020STD$`Row Labels`)
                 Zip <- as.numeric(X20182020STD$`Zip Code`)
                 #created factor variables for all categorical variables
                 Ages <- factor(X20182020STD$`Age Group`, order = TRUE, 
                                labels=c('14 and under', '15 to 19', '20 to 24', '25 to 29', '30 to 34', '35 to 39', '40 to 44', '45 to 49', '50 to 54', '55 to 59', '60 to 64', '65 and older'))
                 Sex <- factor(X20182020STD$Gender, order = FALSE, labels = c("Female", "Male","Other","Unknown"))
                 County <- factor(X20182020STD$`CDC Reporting County`, order = FALSE, labels = c('Adams','Allegheny','Armstrong','Beaver','Bedford','Berks','Blair','Bradford','Bucks','Butler','Cambria','Cameron','Carbon','Central Office','Centre','Chester','Clarion','Clearfield','Clinton','Columbia','Crawford','Cumberland','Dauphin','Delaware','Elk','Erie','Fayette','Forest','Franklin','Fulton','Greene','Huntingdon','Indiana','Jefferson','Juniata','Lackawanna','Lancaster','Lawrence','Lebanon','Lehigh','Luzerne','Lycoming','Mckean','Mercer','Mifflin','Monroe','Montgomery','Montour','Northampton','Northumberland','Perry','Philadelphia','Pike','Potter','Schuylkill','Snyder','Somerset','Sullivan','Susquehanna','Tioga','U','Union','Venango','Warren','Washington','Wayne','Westmoreland','Wyoming','York'))
                 STD <- factor(X20182020STD$`Final Condition`, order = FALSE, labels = c('Chlamydia trachomatis infection', 'Gonorrhea', 'Syphilis, congenital', 'Syphilis, early latent', 'Syphilis, late latent', 'Syphilis, late, non-neurological', 'Syphilis, latent unknown duration', 'Syphilis, primary', 'Syphilis, secondary', 'Syphilis, unknown', 'Unknown'))
                 #trying to get this to commit to github