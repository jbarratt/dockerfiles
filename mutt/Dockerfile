# Run Mutt from a container

# docker run -it \
#	-v /etc/localtime:/etc/localtime \
#   -v $HOME/.vimrc:/home/user/.vimrc \
#   -v $HOME/.vim:/home/user/.vim \
#	--name mutt \
#	mutt

FROM debian:sid

# MAINTAINER Jessica Frazelle <jess@docker.com>
# based almost entirely off Jessica's work.
# alterations to work with local vim config and O365
MAINTAINER Joshua Barratt <jbarratt@serialized.net>

RUN groupadd -g 1000 user \
	&& useradd --create-home -d /home/user -g user -u 1000 user

RUN apt-get update && apt-get install -y \
	ca-certificates \
	git \
	libsasl2-modules \
	lynx \
	elinks \
	mutt-dbg \
	mutt-patched \
	vim-nox \
	--no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*

# a browser is necessary!
ENV BROWSER lynx

USER user
ENV HOME /home/user
ENV TERM xterm-256color
ENV TZ America/Los_Angeles

RUN mkdir -p $HOME/.mutt/cache/headers $HOME/.mutt/cache/bodies \
	&& touch $HOME/.mutt/certificates

# vim settings
# RUN  git clone https://github.com/altercation/vim-colors-solarized $HOME/.vim/bundle/vim-colors-solarized

ENV LANG C.UTF-8

COPY    .vim $HOME/.vim
COPY    .vimrc $HOME/.vimrc
COPY	.mutt			$HOME/.mutt

COPY	entrypoint.sh	/entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["mutt-patched", "-F", "~/.mutt/muttrc"]
