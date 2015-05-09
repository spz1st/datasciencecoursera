# R programming assignment 1, part 1

pollutantmean <- function(directory, pollutan, id=1:332){
  # setwd(directory)
  v <- vector("numeric")
  for (i in id){
    name <- paste(directory, "/", sprintf("%03d", i), ".csv", sep="")
    # print(name)
    data=read.csv(name)
    # print(summary(data))
    # print(data[pollutan][!is.na(data[pollutan])])
    v = c(v, data[pollutan][!is.na(data[pollutan])])
  }
  mean(v)
}
