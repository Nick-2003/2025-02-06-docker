# 2025-02-06-docker

-  To run RStudio into container
    - This format is easier to edit.
```bash 
docker run \
    --rm \ # Remove upon completion 
    -it \ # -i (interactive): Keeps STDIN open even if not attached, allowing you to interact with the container;  -t (tty): Allocates a pseudo-TTY, which provides a terminal interface for the container 
    -e PASSWORD="password" \ # Environment variable with password 
    -p 8787:8787 \ Port 
    -v .:/home/rstudio/work \ # .:/home/rstudio/work is new folder 
    rocker/rstudio:4.4.2 # Easier to edit this one
```