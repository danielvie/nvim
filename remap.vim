
	" noremap ; :
	noremap <c-f> ;

	nnoremap <a-j> :m .+1<cr>==
	nnoremap <a-k> :m .-2<cr>==
	inoremap <a-j> <esc>:m .+1<cr>==gi
	inoremap <a-k> <esc>:m .-2<cr>==gi
	vnoremap <a-j> :m '>+1<cr>gv=gv
	vnoremap <a-k> :m '<-2<cr>gv=gv

	onoremap L $
	onoremap H ^

	nnoremap <leader>w :w<cr>
	nnoremap <leader>q :q<cr>

	" mantem o bloco selecionado quando mover
	vnoremap < <gv
	vnoremap > >gv

	" abre arquivo de edicao
	if has('win32')
		nnoremap <c-,> :edit C:\Users\Daniel\AppData\Local\nvim\init.vim<cr>
		nnoremap <a-.> :edit C:\Users\Daniel\AppData\Local\nvim\init.vim<cr>
		nnoremap <a-,> :tabedit C:\Users\Daniel\AppData\Local\nvim\init.vim<cr>
	else
		nnoremap <c-,> :edit ~/.config/nvim/init.vim<cr>
		nnoremap <a-.> :edit ~/.config/nvim/init.vim<cr>
		nnoremap <a-,> :tabedit ~/.config/nvim/init.vim<cr>
	endif

	" sair do modo terminal
	tnoremap <esc> <c-\><c-n>

	" map para mudar de tab
	map <C-]> gt
	map <C-[> gT

	" map para mudar de buffer
	map <A-=> :bn<cr>
