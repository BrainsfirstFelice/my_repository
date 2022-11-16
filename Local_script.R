# This script is used to try out to push the script to github
  # I am using the bo settings function for this

# CHANGED

# Data is a string (copied from for example excel) with the intercept and the 16 capacities
data = c()
with_intercept = FALSE

bo_settings <- function(data = data, with_intercept = TRUE){
  if(with_intercept == TRUE){
    intercept = data[1]
    values = c(rep(0,58),data[2:5],0,data[6:7],0,data[8:11],0,data[12:17])
  } else if(with_intercept == FALSE){
    intercept = NA
    values = c(rep(0,58),data[1:4],0,data[5:6],0,data[7:10],0,data[11:16])
  }
  values_vector = paste(as.character(values), sep = "' '", collapse = ",")
  
  # Output
  print(paste("The intercept is", intercept))
  print(paste("The values vector is", values_vector))
}

bo_settings(data = data, with_intercept = TRUE)