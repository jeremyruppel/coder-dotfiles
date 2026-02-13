.PHONY: install

install: \
	~/.gitconfig \
	~/.config/nvim/init.vim \
	~/.local/share/nvim/site/autoload/plug.vim

clean:
	rm -rf ~/.gitconfig
	rm -rf ~/.config/nvim/init.vim
	rm -rf ~/.local/share/nvim/site/autoload/plug.vim

~/.gitconfig: .gitconfig
	cp -R $< $@

~/.config/nvim/init.vim: .config/nvim/init.vim
	mkdir -p $(@D)
	cp -R $< $@

~/.local/share/nvim/site/autoload/plug.vim: .local/share/nvim/site/autoload/plug.vim
	mkdir -p $(@D)
	cp -R $< $@

.local/share/nvim/site/autoload/plug.vim:
	curl -fLo $@ --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
