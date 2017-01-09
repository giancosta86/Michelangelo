#-------------
# GENERAL INFO
#-------------

FROM ubuntu:xenial
MAINTAINER Gianluca Costa <gianluca@gianlucacosta.info>


#------------------------
# INSTALLING APT PACKAGES
#------------------------

RUN apt-get update

RUN apt-get install -y nano
RUN apt-get install -y pandoc
RUN apt-get install -y pdftk
RUN apt-get install -y perl
RUN apt-get install -y wget


#---------------------------
# CREATING THE DOC DIRECTORY
#---------------------------

RUN mkdir /doc


#------------------------
# SETTING UP THE TEX USER
#------------------------

ADD fs/home/docuser /home/docuser

RUN groupadd -r docgroup -g 1000
RUN useradd -r -u 1000 -g docgroup -d /home/docuser -s /sbin/nologin -c "Document-editing user" docuser

RUN chown -R docuser:docgroup /home/docuser
RUN chown -R docuser:docgroup /doc


#--------------------
# PREPARING TEX SETUP
#--------------------

RUN mkdir -p /usr/local/texlive
RUN chown -R docuser:docgroup /usr/local/texlive

ADD fs/setup /setup
RUN chown -R docuser:docgroup /setup


#---------------
# SWITCHING USER
#---------------

USER docuser


#--------------------
# INSTALLING TEX LIVE
#--------------------

WORKDIR /setup
RUN tar xvf install-tl-unx.tar.gz

WORKDIR /setup/install-tl-20170107
RUN ./install-tl --profile=/setup/texlive.profile

ENV PATH "/usr/local/texlive/2016/bin/x86_64-linux:$PATH"

WORKDIR /


#---------------------
# REMOVING SETUP FILES
#---------------------

USER root
WORKDIR /
RUN rm -r /setup

USER docuser


#-----------------------------------
# INSTALLING ADDITIONAL TEX PACKAGES
#-----------------------------------

RUN tlmgr install ucs


#---------------------------
# POPULATING THE FILE SYSTEM
#---------------------------

ADD fs/bin /usr/bin
ADD fs/sampleBook /sampleBook
