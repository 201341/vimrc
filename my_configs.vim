map <c-]> g<c-]>

set completeopt=menu,menuone
let OmniCpp_MayCompleteDot=1    "  打开  . 操作符
let OmniCpp_MayCompleteArrow=1  " 打开 -> 操作符
let OmniCpp_MayCompleteScope=1  " 打开 :: 操作符
let OmniCpp_NamespaceSearch=1   " 打开命名空间
let OmniCpp_GlobalScopeSearch=1
let OmniCpp_DefaultNamespace=["std","_GLIBCXX_STD"]
let OmniCpp_ShowPrototypeInAbbr=1  " 打开显示函数原型
let OmniCpp_SelectFirstItem = 2 " 自动弹出时自动跳至第一个
autocmd BufRead scp://* :set bt=acwrite

" 添加自动补全字典
" au FileType php setlocal dict+=~/.vim_runtime/dictionary/php_keywords_list.txt
au FileType cpp setlocal dict+=~/.vim_runtime/dictionary/cpp_keywords_list.txt
" au FileType java setlocal dict+=~/.vim_runtime/dictionary/java_keywords_list.txt
" au FileType markdown setlocal dict+=~/.vim/dictionary/words.txt
"

set number

" 自动消除行尾空格
  " autocmd BufWritePre *.cpp :%s/\s\+$//e
  " autocmd BufWritePre *.h :%s/\s\+$//e

"
inoremap jj <Esc>

nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>u :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_syntax_highlight = 1

let g:ctrlp_extensions = ['funky']

set tags+=./tags
set path=.,/usr/include,/usr/local/include

let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 1
" colorscheme pyte
" set background=dark

let g:indent_guides_auto_colors = 0
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey
"
set tabstop=3
set shiftwidth=3
set expandtab
set textwidth=70

let g:cpp_posix_standard = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1

highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

set cursorcolumn
set cursorline
highlight CursorLine   cterm=NONE ctermbg=lightgreen ctermfg=white guibg=lightgreen guifg=White
highlight CursorColumn cterm=NONE ctermbg=lightgreen ctermfg=white guibg=lightgreen guifg=white

" youcompleteme
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
let g:ycm_enable_semantic_highlighting=1
let g:ycm_key_invoke_completion = '<c-z>'
set completeopt=menu,menuone

noremap <c-z> <NOP>

let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ }
let g:ycm_filetype_whitelist = {
			\ "c":1,
			\ "cpp":1,
			\ "objc":1,
			\ "go":1,
			\ "sh":1,
			\ "zsh":1,
			\ "zimbu":1,
			\ }

nnoremap <leader>jl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>
nnoremap <leader>ji :YcmCompleter GoToImplementation<CR>
nnoremap <leader>jr :YcmCompleter GoToReferences<CR>
nnoremap <leader>jc :YcmCompleter GoToCallers<CR>
nnoremap <leader>jce :YcmCompleter GoToCallees<CR>

" ctrlsf
let g:ctrlsf_position = 'right'
let g:ctrlsf_regex_pattern = 1
let g:ctrlsf_case_sensitive = 'yes'
let g:ctrlsf_default_root = 'project'
let g:ctrlsf_auto_close = 0
let g:ctrlsf_populate_qflist = 1
let g:ctrlsf_search_mode = 'async'
let g:ctrlsf_winsize = '30%'
" let g:ctrlsf_default_view_mode = 'compact'
nmap <Leader>j :CtrlSF<CR>
