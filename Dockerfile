############################################################
# Dockerfile to build Grunt container images
# Based on https://registry.hub.docker.com/u/dockerfile/nodejs-bower-gulp/
############################################################

# Set the base image to nodejs-bower-gulp
FROM dockerfile/nodejs-bower-gulp

# File Author / Maintainer
MAINTAINER Paul Mead

# Fix DNS
sudo dpkg-reconfigure -f noninteractive tzdata

# Update the repository sources list
RUN apt-get update

################## BEGIN INSTALLATION ######################
# Install CSSmin
# Ref: https://www.npmjs.org/package/gulp-cssmin

# Install cssmin via npm
RUN npm install gulp-cssmin --save-dev

