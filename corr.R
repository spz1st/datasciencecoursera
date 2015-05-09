# R programming assignment 1, part 3

corr <- function(directory, threshold = 0){
  v <- vector("numeric")
  for (f in list.files(directory, pattern="\\.csv$")){
    name <- paste(directory, "/", f, sep="")
    # print(name)
    data <- read.csv(name)
    d = data[!is.na(data["sulfate"]) & !is.na(data["nitrate"]),]
    if(nrow(d) > threshold){
      v <- c(v, cor(d["sulfate"],d["nitrate"])[1]) 
    }
    # else {
    #  print(name)
    # }
  }
  v
}
