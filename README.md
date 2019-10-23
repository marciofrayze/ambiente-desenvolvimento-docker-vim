# Docker dev environment for Elm with Vim

## Requirements
You only need a recent version of docker and curl installed.

## What is this exactly?
A [vim](https://www.vim.org/) environment for Elm development that I'm using to work on [this other project](https://github.com/marciofrayze/meeting-price-counter-elm).

## Using it
curl -LSso Dockerfile https://raw.githubusercontent.com/marciofrayze/ambiente-desenvolvimento-docker-vim/master/Dockerfile  
docker build . -t ambiente-desenvolvimento  
docker run -it ambiente-desenvolvimento:latest  
