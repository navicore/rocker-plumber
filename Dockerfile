FROM rocker/tidyverse:4.3.0

MAINTAINER Ed Sweeney <ed@onextent.com>

RUN apt-get update -qq && apt-get install -y \
      libssl-dev \
      libcurl4-gnutls-dev

RUN R -e "install.packages(c('plumber','ggthemes', 'here', 'directlabels', 'ggforce', 'usmap', 'igraph', 'data.tree'))"

COPY / /

EXPOSE 8009

ENTRYPOINT ["Rscript", "Main.R"]
