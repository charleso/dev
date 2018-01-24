FROM markhibberd/haskell-build:latest

ENV LANG C.UTF-8

RUN apt-get install -y \
    silversearcher-ag \
    emacs \
    vim \
    zsh \
    screen \
    gpa \
    seahorse \
    libpq-dev

RUN curl https://sh.rustup.rs -sSf | sh -s -- -y

ENV PATH "/root/.cargo/bin:$PATH"

RUN cargo install ripgrep

COPY dotfiles /root/dotfiles

WORKDIR /root

RUN ln -s dotfiles/zsh .zsh
RUN ln -s .zsh/zprofile .zprofile
RUN ln -s .zsh/zshrc .zshrc
RUN ln -s dotfiles/emacs/bootstrap/emacs .emacs
RUN ln -s dotfiles/screen/screenrc .screenrc
RUN git config --global user.name "Mark Hibberd"
RUN git config --global user.email "mark@hibberd.id.au"
RUN mkdir /root/.ssh
RUN chmod 700 /root/.ssh
RUN ssh-keyscan github.com > /root/.ssh/known_hosts
RUN chmod 600 /root/.ssh/known_hosts

WORKDIR /work

CMD /bin/zsh -l
