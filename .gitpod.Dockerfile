FROM gitpod/workspace-full

# Install os packages needed by R apps
RUN sudo apt-get install libudunits2-dev -y

# Install R on Ubuntu
# https://linuxize.com/post/how-to-install-r-on-ubuntu-20-04/
RUN sudo apt-get update
RUN sudo apt install -y dirmngr gnupg apt-transport-https ca-certificates software-properties-common
RUN sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
RUN sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/'
RUN sudo apt install r-base -y
RUN sudo apt install build-essential -y

# Install R packages
RUN sudo R -e 'install.packages("csv")'
RUN sudo R -e 'install.packages("sortable")'
RUN sudo R -e 'install.packages("yamlet")'
RUN sudo R -e 'install.packages("haven")'
RUN sudo R -e 'install.packages("shiny")'
RUN sudo R -e 'install.packages("shinyAce")'
RUN sudo R -e 'install.packages("shinyFiles")'

