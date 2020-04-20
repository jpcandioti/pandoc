Pandoc Docker Image
===================


Docker image
-----------

### Download docker image from Docker Hub repository

~~~~
docker pull jpcandioti/pandoc
~~~~

### Or, build docker image

~~~~
git clone git@github.com:jpcandioti/pandoc.git
docker build -t jpcandioti/pandoc:latest pandoc
~~~~

Usage
-----

#### See Pandoc version

~~~~
docker run --rm jpcandioti/pandoc pandoc -v
~~~~

#### Execute pandoc

~~~~
docker run -v "$PWD":/home/nobody -w /home/nobody -u$(id -u):$(id -g) --rm jpcandioti/pandoc pandoc document.md -o document.pdf
~~~~

#### Execute pandoc from Makefile

~~~~
docker run -v "$PWD":/home/nobody -w /home/nobody -u$(id -u):$(id -g) --rm jpcandioti/pandoc make
~~~~
