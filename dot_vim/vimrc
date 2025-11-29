set nocompatible	"在不兼容vi的模式下运行，兼容则去掉no
filetype plugin indent on   "根据检测到的文件类型加载插件
syntax on		"开启语法
set termguicolors       "启用真彩色

set number
set relativenumber      
set cursorline          "光标行提示
set hls is		"高亮搜索与搜索时动态显示。也可用hlsearch与incsearch来设置。
set wrap		"自动换行显示
set showcmd		"Nomal模式下右下角显示执行的指令
set scrolloff=5
set wildmenu		"使用:find命令查找文件时的文件名补全，用一行显示
set wildignorecase      " 补全文件名、命令时忽略大小写
set ignorecase		" 搜索时忽略大小写
set smartcase           " 但如果输入中包含大写字母，则区分大小写

set autoindent          "根据前一行内容自动缩进
set expandtab		"用空格取代tab键
set softtabstop=2       "4个空格取代一个tab
set shiftwidth=2        "4个空格取代一个>>缩进

set splitbelow          "新窗口在下方
set splitright          "新窗口在右方
let g:mapleader = ' '	"设置全局的<leader>为空格键

" ===
" === 按键映射, nore 表示 no recursion
" === 
noremap <leader>w :w<cr>
noremap <leader>q :q<cr>
noremap <leader>Q :q!<cr>
noremap <leader>r :source $MYVIMRC<cr>
noremap <leader>R :e $MYVIMRC<cr>
noremap <leader>sl :vsplit<cr>
noremap <leader>sh :vsplit<cr>
noremap <leader>sj :split<cr>
noremap <leader>sk :split<cr>
noremap <leader>h <C-w>h
noremap <leader>H :nohlsearch<cr>
noremap <leader>j <C-w>j
noremap <leader>k <C-w>k
noremap <leader>l <C-w>l
noremap <up>    :res +5<cr>
noremap <down>    :res -5<cr>
noremap <left>    :vertical res -5<cr>
noremap <right>    :vertical res +5<cr>
nnoremap <space>[  :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
nnoremap <space>]  :<c-u>put =repeat(nr2char(10), v:count1)<cr>


" ===
" === 侦测并安装vim-plug(以下代码来自vim-plug官方)
" ===
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" ===
" === 安装插件(for vim-plug)
" ===
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }
Plug 'lervag/vimtex'        
Plug 'arcticicestudio/nord-vim'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'EdenEast/nightfox.nvim'
"安装 coc 后使用 :CocInstall coc-marketplace 安装插件市场
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()


" ===
" === iamcco/markdown-preview.nvim
" ===
let g:mkdp_auto_start = 1
let g:mkdp_auto_close = 1
let g:mkdp_browser = '/usr/bin/firefox'


" ===
" === Theme of vim
" === arcticicestudio/nord-vim
" === catppuccin/nvim
" === EdenEast/nightfox.nvim
" ===
"colorscheme nord
colorscheme catppuccin-frappe "catppuccin  catppuccin-latte, , catppuccin-macchiato, catppuccin-mocha
"colorscheme nordfox

" === Theme of airline
"let g:airline_theme='nord'


" ===
" === tex flavor
" ===
let g:tex_flavor = "latex"

" ===
" === coc
" ===
set updatetime=100
" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-c> coc#refresh()
endif
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent><nowait> g[ <Plug>(coc-diagnostic-prev)
nmap <silent><nowait> g] <Plug>(coc-diagnostic-next)
" GoTo code navigation
nmap <silent><nowait> gd <Plug>(coc-definition)
nmap <silent><nowait> gy <Plug>(coc-type-definition)
nmap <silent><nowait> gi <Plug>(coc-implementation)
nmap <silent><nowait> gr <Plug>(coc-references)
" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')
" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)
" Formatting selected code
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)



"coc extentions
let g:coc_global_extension = [
  \ 'coc-marketplace', 
  \ 'coc-json',
  \ 'coc-vimlsp' ]



