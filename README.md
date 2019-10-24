# Docker dev environment for Elm with Vim

## Requirements
You only need a recent version of docker and curl installed.

## What is this exactly?
A [vim](https://www.vim.org/) environment for Elm development that I'm using to work on [this other project](https://github.com/marciofrayze/meeting-price-counter-elm).

## Using it
mkdir vim-elm-dev-environment ; cd vim-elm-dev-environment  
curl -LSso Dockerfile https://raw.githubusercontent.com/marciofrayze/vim-elm-dev-environment/master/Dockerfile  
docker build . -t vim-elm-dev-environment  
docker run -it vim-elm-dev-environment:latest  
