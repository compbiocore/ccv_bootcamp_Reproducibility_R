FROM rocker/rstudio:4
RUN Rscript -e "install.packages('sessioninfo')"
RUN ln -s /usr/lib/rstudio-server/bin/rsession /usr/local/bin/rsession
RUN Rscript -e "install.packages('abtest')"
