FROM rocker/tidyverse:4.5.0

# R Packages from CRAN
RUN R -e "install.packages('kableExtra', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('patchwork', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('pheatmap', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('ggupset', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('ggrepel', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('here', dependencies=TRUE, repos='http://cran.rstudio.com/')"

# R Packages from Bioconductor
RUN R -e "install.packages('BiocManager', dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "BiocManager::install('DESeq2')"
RUN R -e "BiocManager::install('pathview')"
RUN R -e "BiocManager::install('apeglm')"
RUN R -e "BiocManager::install('IHW')"
RUN R -e "BiocManager::install('sva')"

# Add rsession symlink
RUN ln -s /usr/lib/rstudio-server/bin/rsession /usr/local/bin/rsession
