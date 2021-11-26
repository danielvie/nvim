"      _       _      _           
"   __| |_   _(_) ___(_)_ __ __ _ 
"  / _` \ \ / / |/ _ \ | '__/ _` |
" | (_| |\ V /| |  __/ | | | (_| |
"  \__,_| \_/ |_|\___|_|_|  \__,_|
"                                                                 
"  ARQUIVO DE CONFIGURACORES NVIM

	" CONFIG BASICe
	set nu rnu
	set autoread

    " PATHGEN
    execute pathogen#infect()

	" colorscheme molokai
	colorscheme onedark

	set ts=4 sw=4
	set expandtab

	" manter fold
	augroup remember_folds
		autocmd!
		au BufWinLeave ?* mkview 1
		au BufWinEnter ?* silent! loadview 1
	augroup END

	if has('win32')
		" REMAP
		source C:\Users\Daniel\AppData\Local\nvim\remap.vim

		" PLUGINS
		source C:\Users\Daniel\AppData\Local\nvim\plug-config\multicursor.vim
		source C:\Users\Daniel\AppData\Local\nvim\plug-config\sneak.vim
		source C:\Users\Daniel\AppData\Local\nvim\plug-config\easymotion.vim
		source C:\Users\Daniel\AppData\Local\nvim\plug-config\ctrp.vim
		source C:\Users\Daniel\AppData\Local\nvim\plug-config\indent.vim

		source C:\Users\Daniel\AppData\Local\nvim\plug-config\coc.vim
		source C:\Users\Daniel\AppData\Local\nvim\plug-config\coc_snippets.vim

		" source C:\Users\Daniel\AppData\Local\nvim\plug-config\plugins.vim
	else
		" REMAP
		source ~/.config/nvim/remap.vim

		" PLUGINS
		source ~/.config/nvim/plug-config/multicursor.vim
		source ~/.config/nvim/plug-config/sneak.vim
		source ~/.config/nvim/plug-config/easymotion.vim
		source ~/.config/nvim/plug-config/ctrp.vim
		source ~/.config/nvim/plug-config/indent.vim

		source ~/.config/nvim/plug-config/coc.vim
		source ~/.config/nvim/plug-config/coc_snippets.vim

		" source ~/.config/nvim/plug-config/plugins.vim
	endif

	map <esc> <esc>
