library(plumber)
r <- plumb("rest_controller.R")
r$run(port = 8009, host = "0.0.0.0")
