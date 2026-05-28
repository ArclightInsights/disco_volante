library(jsonlite)
library(httr2)
library(tidyverse)

NSSP_Combined_ED_Visits_ENDPOINT="https://data.cdc.gov/api/v3/views/7xva-uux8/query.json"
API_token<-Sys.getenv("Socrata-token")

header_list<-list("Accept" == "application/json")

req<-request(NSSP_Combined_ED_Visits_ENDPOINT)|>
  req_headers_redacted(Accept = "application/json", 
  limit = "100000", 
  "X-App-Token" = API_token)
  

  
