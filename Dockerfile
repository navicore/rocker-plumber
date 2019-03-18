FROM rocker/tidyverse:3.5.3

MAINTAINER Ed Sweeney <ed@onextent.com>

RUN apt-get update -qq && apt-get install -y \
      libssl-dev \
      libcurl4-gnutls-dev

RUN R -e "install.packages(c('plumber','ggthemes', 'here'))"

COPY / /

EXPOSE 8009

ENTRYPOINT ["Rscript", "Main.R"]
