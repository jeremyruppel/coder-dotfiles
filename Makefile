
.PHONY: install

install: \
	~/.config/nvim/init.vim \
	~/.local/share/nvim/

~/.config/nvim/init.vim: .config/nvim/init.vim
	mkdir -p $(@D)
	cp -R $< $@

~/.local/share/nvim/:
	mkdir -p $@
	cp -R .local/share/nvim/ $@

.local/share/nvim/site/autoload/plug.vim:
	curl -fLo $@ --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
