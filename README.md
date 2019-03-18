rocker plumber docker image
==========

experiments with R API servers to generate charts and predictions and enriched time series...

jump started by this excellent blog: https://medium.com/@skyetetra/using-docker-to-deploy-an-r-plumber-api-863ccf91516d

# USAGE

1. Make your own Dockerfile that is based off this one or just copy this Dockerfile
2. Modify rest_controller.R as needed - see [docs](https://www.rplumber.io/docs/)

See rest_controller.R for hints about posting json or GET param passing or
serving PDFs and PNG files from ggplot2 (TODO).
