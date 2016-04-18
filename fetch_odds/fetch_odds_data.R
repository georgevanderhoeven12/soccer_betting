###With this code I fetch all the odds data

  setwd("~/soccer_betting/fetch_odds")
  source("function_fetch_2015_2016.R")
  source("function_match_scoresway_ids.R")

  #Fetch the odds for the last year
  df_2015_2016 <- createDataFrame()
  #Fetch the match_table (to link to scoresway_ids)
  df_matches <- createMergeFile()
  
  
