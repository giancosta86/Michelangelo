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


#--------------------
# INSTALLING TEX LIVE
#--------------------

ADD fs/setup /setup
WORKDIR /setup
RUN tar xvf install-tl-unx.tar.gz
WORKDIR /setup/install-tl-20170107
RUN ./install-tl --profile=/setup/texlive.profile
WORKDIR /
RUN rm -r /setup

ENV PATH "/usr/local/texlive/2016/bin/x86_64-linux:$PATH"


#-----------------------------------
# INSTALLING ADDITIONAL TEX PACKAGES
#-----------------------------------

RUN tlmgr install ucs


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

RUN chmod o+w /usr/local/texlive/2016/tlpkg


#---------------------------
# POPULATING THE FILE SYSTEM
#---------------------------

ADD fs/bin /bin
ADD fs/sampleBook /sampleBook


#---------------
# SWITCHING USER
#---------------

USER texuser
