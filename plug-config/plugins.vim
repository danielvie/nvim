
	" execute pathogen#infect()
	
	call plug#begin()

	" selecionar varios pontos
	Plug 'https://github.com/terryma/vim-multiple-cursors'

	Plug 'https://github.com/Yggdroot/indentLine'
	Plug 'https://github.com/airblade/vim-gitgutter'
	Plug 'https://github.com/ctrlpvim/ctrlp.vim'
	Plug 'https://github.com/frazrepo/vim-rainbow'
	Plug 'https://github.com/itchyny/lightline.vim'
	Plug 'https://github.com/jiangmiao/auto-pairs.git'
	" Plug 'https://github.com/junegunn/fzf.vim'
	Plug 'https://github.com/preservim/nerdtree'
	Plug 'https://github.com/tpope/vim-commentary'
	Plug 'https://github.com/tpope/vim-fugitive'
	Plug 'https://github.com/tpope/vim-surround'
	Plug 'https://github.com/wellle/targets.vim'
	Plug 'https://github.com/easymotion/vim-easymotion'

	" sneak
	Plug 'https://github.com/justinmk/vim-sneak'
	
	" GUI enhancements
	Plug 'machakann/vim-highlightedyank'
	Plug 'andymass/vim-matchup'

	" if has('nvim')
	"   Plug 'https://github.com/Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	" else
	"   Plug 'https://github.com/Shougo/deoplete.nvim'
	"   Plug 'https://github.com/roxma/nvim-yarp'
	"   Plug 'https://github.com/roxma/vim-hug-neovim-rpc'
	" endif

	" Plug 'https://github.com/shougo/deoplete-clangx'
	"

	" Use release branch (Recommend)
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	call plug#end()
