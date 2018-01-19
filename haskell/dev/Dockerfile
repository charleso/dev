FROM markhibberd/haskell-build:latest

RUN apt-get install -y \
    rust \
    silversearcher-ag \
    emacs \
    zsh \
    screen

RUN cargo install ripgrep

COPY dotfiles /root/dotfiles

WORKDIR /root

RUN ln -s dotfiles/zsh .zsh
RUN ln -s .zsh/zprofile .zprofile
RUN ln -s .zsh/zshrc .zshrc
RUN ln -s dotfiles/emacs/bootstrap/emacs .emacs
RUN ln -s dotfiles/screen/screenrc .screenrc
RUN git config --global user.name "Mark Hibberd"
RUN git config --global email "mark@hibberd.id.au"
