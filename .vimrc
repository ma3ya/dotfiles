" === 文字コードまわり ===
" 内部エンコーディング
set encoding=utf-8
" ファイルエンコーディング
set fileencoding=utf-8
set fileencodings=iso-2022-jp,utf-8,euc-jp,cp932
" 改行コード
set fileformats=unix
" vimが認識する文字幅を調整する
if &encoding == 'utf-8'
  set ambiwidth=double
endif

" === 検索まわり ===
" 検索時に大文字・小文字を無視(ignorecase: 無視しない)
set ignorecase
" 大文字・小文字の両方が含まれている場合は、区別する
set smartcase
" インクリメンタルサーチ
set incsearch
" マッチした箇所をハイライト
set hlsearch
" 検索時にファイルの最後まで言ったら最初に戻る(nowrapscan:戻らない)
set wrapscan

" === 編集まわり ===
" vi互換モードにしない
set nocompatible
" バックアップファイルを作らない
set nobackup
" スワップファイル作らない
set noswapfile

" === 表示まわり ===
" タイトルを表示しない(Thanks for flying Vim 対策)
set notitle
" 入力中のコマンドを表示
set showcmd
" 括弧入力時に対応する括弧を表示(noshowmatch:表示しない)
set showmatch
" 常にステータス行を表示する
set laststatus=2
" ステータスラインに文字コードと改行コード表示
set statusline=%F%m%r%h%w\ [%{&fenc!=''?&fenc:&enc}]\[%{&ff}]\%=\[%l/%L]
" カラー表示
" ex) default, elflord, morning, perchpuff, torte, blue, delek, evening
"     , murphy, ron, zellner, darkblue, desert, koehler, pablo, shine
syntax on
colorscheme elflord
" 行番号設定
highlight LineNr ctermfg=2
" オートインデント
set autoindent
" C言語のコードを自動的にインデントする
set cindent
" カーソル行を表示
set ruler
" 行番号を表示
set number
" Tabを明示的に表示させる
set listchars=tab:__
set list
" Tab文字を画面上の見た目で何文字に展開するか
set tabstop=4
" インデント時に挿入されるTabの幅
set shiftwidth=4
" インデントをTabではなくスペースにする
set expandtab

" === 機能まわり ===
" コマンドライン補完するときに強化されたものを使う
set wildmenu
"<BS>キーがつかえる範囲
set backspace=indent,eol,start
" バックスペースキーを有効にする
set t_kd=<BS>
" デリートキーを有効にする
set t_kD=<Del>
" Ctrl-A の8進数計算を抑制
set nrformats=octal
" 折りたたみオプション
set foldmethod=marker
" 埋め込まれるマーカーを囲むコメントの形式を変更
set commentstring=#%s
" 折りたたみコマンドのショートカット
nmap c :%foldclose<CR>
" 検索結果のハイライトの停止
nmap <ESC><ESC> :nohlsearch<CR>
" 保存時に行末の空白を削除する
autocmd BufWritePre * :%s/\s\+$//ge

" === 環境変数まわり ===
" Desktop を環境変数に設定
"let $DESKTOP='F:\Users\msy\Desktop'

" === Pythonまわり ===
" Python 用設定
autocmd FileType python setl autoindent
autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python setl tabstop=8 expandtab shiftwidth=4 softtabstop=4

" === 全角スペースをハイライト ===
"augroup highlightldegraphicSpace
"  autocmd!
"  autocmd ColorScheme * highlight ldeographicSpace term=underline ctermbg=DarkGreen guibg=DarkGreen
"  autocmd VimEnter,WinEnter * match ldeographicSpace /　/
"augroup END
"colorscheme default

" ■とか○の文字があってもカーソル位置がずれないようにする。
if exists('&ambiwidth')
  set ambiwidth=double
endif

" .vimrc を開く
"nnoremap ,. :<C-u>edit $MYVIMRC<CR>
nnoremap ,. :tabnew $MYVIMRC<CR>
" .vimrc の即時反映
nnoremap ,s. :<C-u>source $MYVIMRC<CR>

"" vundle
"set rtp+=~/.vim/vundle.git/
"call vundle#rc()
"
"" vundle で入れた plugin
"Bundle 'quickrun.vim'
"Bundle 'neocomplcache'
"Bundle 'eregex.vim'
"Bundle 'gtags.vim'
"Bundle 'unite.vim'
"Bundle 'git://github.com/Shougo/vimshell.git'
"
"" neocomplcache
"let g:neocomplcache_enable_at_startup = 1
"
"" gtags
"" 検索結果Windowを閉じる
"nnoremap <C-q> <C-w><C-w><C-w>q
"" Grep 準備
"nnoremap <C-g> :Gtags -g
"" このファイルの関数一覧
"nnoremap <C-l> :Gtags -f %<CR>
"" カーソル以下の定義元を探す
"nnoremap <C-j> :Gtags <C-r><C-w><CR>
"" カーソル以下の使用箇所を探す
"nnoremap <C-k> :Gtags -r <C-r><C-w><CR>
"" 次の検索結果
"nnoremap <C-n> :cn<CR>
"" 前の検索結果
"nnoremap <C-p> :cp<CR>
