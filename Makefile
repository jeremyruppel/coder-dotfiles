.PHONY: install clean

DOTS = \
	.bash_aliases \
	.gitconfig \
	.rgignore \
	.tmux.conf \
	.config/nvim/init.vim \
	.config/nvim/coc.vim \
	.local/share/nvim/site/autoload/plug.vim

INSTALLED = $(addprefix $(HOME)/,$(DOTS))

install: $(INSTALLED)

clean:
	rm -f $(INSTALLED)

$(INSTALLED): $(HOME)/% : %
	mkdir -p $(@D)
	cp $< $@

.local/share/nvim/site/autoload/plug.vim:
	curl -fLo $@ --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
