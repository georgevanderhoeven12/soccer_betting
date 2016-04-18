createDataFrame <- function(){
  
  list <- c("http://www.football-data.co.uk/mmz4281/1516/E0.csv", "http://www.football-data.co.uk/mmz4281/1516/E1.csv", "http://www.football-data.co.uk/mmz4281/1516/E2.csv", "http://www.football-data.co.uk/mmz4281/1516/E3.csv", "http://www.football-data.co.uk/mmz4281/1516/SC0.csv", "http://www.football-data.co.uk/mmz4281/1516/D1.csv", "http://www.football-data.co.uk/mmz4281/1516/D2.csv", "http://www.football-data.co.uk/mmz4281/1516/I1.csv", "http://www.football-data.co.uk/mmz4281/1516/I2.csv", "http://www.football-data.co.uk/mmz4281/1516/SP1.csv", "http://www.football-data.co.uk/mmz4281/1516/SP2.csv", "http://www.football-data.co.uk/mmz4281/1516/N1.csv", "http://www.football-data.co.uk/mmz4281/1516/B1.csv", "http://www.football-data.co.uk/mmz4281/1516/P1.csv", "http://www.football-data.co.uk/mmz4281/1516/T1.csv")
  
  odds_2015_2016 <- data.frame(Date= character(), HomeTeam = character(), AwayTeam = character(), B365H = numeric(), B365D = numeric(), B365A = numeric(), BWH = numeric(), BWD = numeric(), BWA = numeric(), IWH = numeric(), IWD = numeric(), IWA = numeric())
  
  for(i in list){
    
    df_temp <- read.csv(url(i))
    df_temp = df_temp[, names(df_temp) %in% c("Date","HomeTeam","AwayTeam", "B365H", "B365D", "B365A", "BWH", "BWD", "BWA", "IWH", "IWD", "IWA")]
    print(head(df_temp))
    odds_2015_2016 <- rbind(odds_2015_2016, df_temp)
  }
  return(odds_2015_2016)
}   