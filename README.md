# configuracoes VIM e NVIM

	path -> ~/.vimrc
	path -> ~/.config/nvim/init.vim

## CONFIGURACAO NVIM (WINDOWS)

	path -> C:\Users\$User\AppData\Local\nvim\init.vim

## INICIALIZANDO PlugInstall

##### instalar os plugins e CoC
	:PlugInstall

	:CocInstall coc-python coc-clangd coc-snippets
	
============================================================================================

## instalar pynvim

	>> pip install --user pynvim

## instalar nodejs e npm

##### LINUX

	>> sudo apt install nodejs npm

##### WINDOWS

> ou, para Windows, fazer o download em https://nodejs.org/en/download/

## instalar clang

	https://releases.llvm.org/download.html

## INSTALAR OUTROS PACOTES COC

##### javascript

	:CocInstall coc-tslint-plugin coc-tsserver coc-emmet coc-css coc-html coc-json



##### total

	:CocInstall coc-tslint-plugin coc-tsserver coc-emmet coc-css coc-html coc-json coc-python coc-clangd coc-snippets

