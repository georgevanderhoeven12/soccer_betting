###This function gets all the match_names (so they can be linked to scores_ids)

createMergeFile <- function(){
  library(DBI)
  con <- dbConnect(RMySQL::MySQL(),
                   dbname = "soccer_predictions",
                   host = "109.237.221.222",
                   port = 3306,
                   user = "marcvanderpeet12",
                   password = "Koeman1988!")
  
  sql <- sprintf("SELECT * FROM `club_specific`")
  df_total <- dbGetQuery(con, sql)
  return(df_total)
  
}