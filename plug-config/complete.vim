
	" Change clang binary path
	call deoplete#custom#var('clangx', 'clang_binary', 'C:/Program Files/LLVM/bin/clang.exe')

	" Change clang options
	call deoplete#custom#var('clangx', 'default_c_options', '')
	call deoplete#custom#var('clangx', 'default_cpp_options', '')

	let g:deoplete#enable_at_startup = 1 
