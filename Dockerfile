FROM debian:latest
RUN apt-get update -yq \
    && apt-get install curl -yq \
    && curl -sL https://deb.nodesource.com/setup_12.x | bash \
    && apt-get install nodejs -yq \
    && apt-get install git -yq \
    && apt-get install vim -yq \
    && apt-get install zsh -yq \
    && sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" \
    && npm install -g elm elm-test elm-oracle elm-format --unsafe-perm=true \
    && useradd -ms /bin/bash developer \
    && curl -LSso /home/developer/.vimrc https://raw.githubusercontent.com/marciofrayze/dot-files/master/vim/vimrc \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

USER developer
WORKDIR /home/developer
ENTRYPOINT git clone https://github.com/marciofrayze/meeting-price-counter-elm.git && /bin/bash
