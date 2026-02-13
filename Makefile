NVIM_VERSION="v0.10.4"

.PHONY: install

install: \
	~/.local/bin/nvim \
	~/.config/nvim/init.vim \
	~/.local/share/nvim/

clean:
	rm -rf ~/.local/bin/nvim
	rm -rf ~/.config/nvim/init.vim
	rm -rf ~/.local/share/nvim/site/autoload/plug.vim

~/.local/bin/nvim:
	mkdir -p $(@D)
	curl -fsSL "https://github.com/neovim/neovim/releases/download/${NVIM_VERSION}/nvim-linux-x86_64.tar.gz" -o /tmp/nvim.tar.gz
	tar xzf /tmp/nvim.tar.gz -C $(@D)
	mv $(@D)/nvim-linux-x86_64/bin/nvim $@
	rm -rf $(@D)/nvim-linux-x86_64
	rm /tmp/nvim.tar.gz

~/.config/nvim/init.vim: .config/nvim/init.vim
	mkdir -p $(@D)
	cp -R $< $@

~/.local/share/nvim/site/autoload/plug.vim: .local/share/nvim/site/autoload/plug.vim
	mkdir -p $(@D)
	cp -R $< $@

.local/share/nvim/site/autoload/plug.vim:
	curl -fLo $@ --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
