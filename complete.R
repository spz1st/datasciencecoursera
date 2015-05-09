# R programming assignment 1, part 2

complete <- function(directory, id=1:332){
  d <- data.frame()
  for (i in id){
    name <- paste(directory, "/", sprintf("%03d", i), ".csv", sep="")
    # print(name)
    data <- read.csv(name)
    # print(summary(data))
    # print(data[pollutan][!is.na(data[pollutan])])
    rows <- nrow(data[!is.na(data["sulfate"]) & !is.na(data["nitrate"]),])
    d <- rbind(d, c(i, rows)) 
  }
  names(d) = c("id", "nobs")
  d
}
