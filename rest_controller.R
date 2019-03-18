library(tidyverse)
library(jsonlite)
library(stringi)
library(lubridate)

# make the model
source("make_model.R")

#* @get /predict_petal_length
get_predict_length <- function(petal_width) {
    # convert the input to a number
    petal_width <- as.numeric(petal_width)
    # create the prediction data frame
    input_data <- data.frame(Petal.Width = as.numeric(petal_width))
    # create the prediction
    predict(model, input_data)
}

#
# post json
#

#* @post /chart_1
post_chart_1 <- function(req) {
  j = fromJSON(req$postBody, simplifyDataFrame = TRUE)
  j$foo
}

#
# take control of mime types and return binary data via
# https://www.rplumber.io/docs/rendering-and-output.html#serializers
#

#* @serializer contentType list(type="application/pdf")
#* @get /pdf
post_pdf <- function(){
  tmp <- tempfile()
  pdf(tmp)
  plot(1:10, type = "b")
  text(4, 8, "bar")
  text(6, 2, paste("The time is", Sys.time()))
  dev.off()

  readBin(tmp, "raw", n = file.info(tmp)$size)
}
