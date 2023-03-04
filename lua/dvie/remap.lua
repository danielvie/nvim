vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

vim.keymap.set('n', '<leader>pv', ':Ex<CR>')
vim.keymap.set('n', '<leader>u', ':UndotreeShow<CR>')

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', 'Y', "yg$")

-- save ans quit
vim.keymap.set('n', '<leader>w', ":w<cr>")
vim.keymap.set('n', '<leader>q', ":bd<cr>")

-- select all
vim.keymap.set('n', '<leader>t', "ggVG")

-- copy and paste
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>p', '"+p')


-- REMAP FROM VIM
--
-- 	" noremap ; :
-- 	" noremap <c-f> ;

-- 	nnoremap <a-j> :m .+1<cr>==
-- 	nnoremap <a-k> :m .-2<cr>==
-- 	inoremap <a-j> <esc>:m .+1<cr>==gi
-- 	inoremap <a-k> <esc>:m .-2<cr>==gi
-- 	vnoremap <a-j> :m '>+1<cr>gv=gv
-- 	vnoremap <a-k> :m '<-2<cr>gv=gv

-- 	onoremap L $
-- 	onoremap H ^

-- 	nnoremap <leader>w :w<cr>
-- 	nnoremap <leader>q :q<cr>

-- 	" mantem o bloco selecionado quando mover
-- 	vnoremap < <gv
-- 	vnoremap > >gv

-- 	" abre arquivo de edicao
-- 	if has('win32')
-- 		nnoremap <c-,> :edit $LOCALAPPDATA\nvim\init.vim<cr>
-- 		nnoremap <a-.> :edit $LOCALAPPDATA\nvim\init.vim<cr>
-- 		nnoremap <a-,> :tabedit $LOCALAPPDATA\nvim\init.vim<cr>
-- 	else
-- 		nnoremap <c-,> :edit ~/.vim/init.vim<cr>
-- 		nnoremap <a-.> :edit ~/.vim/init.vim<cr>
-- 		nnoremap <a-,> :tabedit ~/.vim/init.vim<cr>
-- 	endif

-- 	" sair do modo terminal
-- 	tnoremap <esc> <c-\><c-n>

-- 	" map para mudar de buffer
-- 	map <A-=> :bn<cr>
