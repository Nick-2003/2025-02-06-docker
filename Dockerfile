# Default on customising docker containers 
# FROM rocker/rstudio:4.4.2 
FROM --platform=linux/amd64 rocker/rstudio:4.4.2

# Make sure renv in local machine first 
# Typically pick cloud r-project; when popup shows up, select option given in repos 
# Want to run non-interactively by passing in all info 
RUN Rscript -e "install.packages('renv', repos = c(CRAN = 'https://cloud.r-project.org'))" 

# Ways to install packages (1)
# RUN Rscript -e "install.packages('remotes', repos = c(CRAN = 'https://cloud.r-project.org'))" # Double quotes for command itself, single quotes for within command 
# Rscript -e "remotes::install_version('renv', version='1.0.11')"

# Ways to install packages (2); if current folder has file, start copying files 
# COPY renv.lock /home/rstudio/renv.lock # Copy lock file is in hw; only if renv.lock exists

