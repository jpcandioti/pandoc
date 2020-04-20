FROM debian:buster-slim

RUN apt-get update \
 && apt-get dist-upgrade --yes --auto-remove \
 && apt-get --yes install make \
                          texlive \
                          texlive-fonts-recommended \
                          texlive-fonts-extra \
                          texlive-lang-all \
                          texlive-latex-extra \
                          wget

RUN wget -qO- https://api.github.com/repos/jgm/pandoc/releases/latest \
  | grep "browser_download_url.*deb" \
  | cut -d : -f 2,3 \
  | tr -d \" \
  | wget -qi - \
 && dpkg -i *.deb
