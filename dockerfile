FROM gitpod/workspace-full

# Install R on Ubuntu
# https://linuxize.com/post/how-to-install-r-on-ubuntu-20-04/
RUN sudo apt-get update
RUN sudo apt install -y dirmngr gnupg apt-transport-https ca-certificates software-properties-common
RUN sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
RUN sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/'
RUN sudo apt install r-base -y
RUN sudo apt install build-essential -y
