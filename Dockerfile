FROM debian:bullseye-slim

RUN apt-get update \
 && apt-get dist-upgrade --yes --auto-remove \
 && apt-get --yes install make \
                          texlive \
                          texlive-fonts-recommended \
                          texlive-fonts-extra \
                          texlive-lang-all \
                          texlive-latex-extra \
                          wget

RUN wget https://github.com/jgm/pandoc/releases/download/2.17.0.1/pandoc-2.17.0.1-1-amd64.deb \
 && dpkg -i pandoc-2.17.0.1-1-amd64.deb
