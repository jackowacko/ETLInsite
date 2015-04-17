install.packages('devtools')
packages1 <- c('RCurl','dplyr','tidyr','bit64','RPostgreSQL'
               ,'ggplot2','rCharts')

install.packages('xml2')
require(devtools)
install_github("hadley/rvest")

install_git('https://github.com/hadley/rvest.git')

library(checkpoint)
library(rvest)

checkpoint("2015-03-10")
library(rvest)
url <- '/home/jackson/opt/ETL Insite/FIS/FIS3666084_html/html/83-fc122.htm'

reviews <- url %>%
  read_html() %>% html_nodes("table.pubs_caution ")%>%
  html_text()
