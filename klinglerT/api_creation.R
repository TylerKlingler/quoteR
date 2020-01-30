pacman::p_load(httr,jsonlite,dplyr)
my_url <- paste0("https://favqs.com/?apikey=",Sys.getenv("favQ_key"))
raw_result <- httr::GET(my_url)

str(raw_result)
str(raw_result$content)

all_that_content <- httr::content(raw_result, as = 'text')
str(all_that_content)

json_content <- jsonlite::fromJSON(all_that_content,flatten = T)
dplyr::glimpse(json_content)

