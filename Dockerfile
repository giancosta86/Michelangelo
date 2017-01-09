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

ADD fs/home/texuser /home/texuser

RUN groupadd -r texgroup -g 1000
RUN useradd -r -u 1000 -g texgroup -d /home/texuser -s /sbin/nologin -c "Document-editing user" texuser

RUN chown -R texuser:texgroup /home/texuser
RUN chown -R texuser:texgroup /doc


#--------------------
# PREPARING TEX SETUP
#--------------------

RUN mkdir -p /usr/local/texlive
RUN chown -R texuser:texgroup /usr/local/texlive

ADD fs/setup /setup
RUN chown -R texuser:texgroup /setup


#---------------
# SWITCHING USER
#---------------

USER texuser


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

USER texuser


#-----------------------------------
# INSTALLING ADDITIONAL TEX PACKAGES
#-----------------------------------

RUN tlmgr install ucs


#---------------------------
# POPULATING THE FILE SYSTEM
#---------------------------

ADD fs/bin /usr/bin
ADD fs/sampleBook /sampleBook
