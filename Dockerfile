FROM rocker/rstudio

RUN apt update && apt install -y \
    openssh-client libxt-dev

# R Package
RUN R -e "install.packages(c('renv'))"

# Package Cahce & Permission
RUN cd /home/rstudio && mkdir .cache .cache/R .cache/R/renv && \
    chown rstudio:rstudio .cache .cache/R .cache/R/renv