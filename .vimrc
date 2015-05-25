" Note: Skip initialization for vim-tiny or vim-small.
 if !1 | finish | endif

 if has('vim_starting')
   if &compatible
     set nocompatible               " Be iMproved
   endif

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'
 NeoBundle 'Shougo/unite.vim'
 NeoBundle 'mattn/emmet-vim'
 NeoBundle 'tpope/vim-endwise'
 NeoBundle 'scrooloose/nerdtree'
 NeoBundle 'fatih/vim-go'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!

 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck



"---------------------------------------------------------------------------
" 編集に関する設定:
"
" タブの画面上での幅
set tabstop=2
" タブをスペースに展開しない (expandtab:展開する)
set noexpandtab
" 自動的にインデントする (noautoindent:インデントしない)
set autoindent
" 自動的に挿入されるインデントのスペース幅
set shiftwidth=2
" tabキーを押した時に挿入されるスペース数:0はtabstopと同数に
set softtabstop=0
" 検索語句のハイライト
set hlsearch
" タブとか改行の表示
set list
set listchars=tab:>-,trail:-
" バックスペースでインデントや改行を削除できるようにする
set backspace=2
" 検索時にファイルの最後まで行ったら最初に戻る (nowrapscan:戻らない)
set wrapscan
" 括弧入力時に対応する括弧を表示 (noshowmatch:表示しない)
set showmatch
" コマンドライン補完するときに強化されたものを使う(参照 :help wildmenu)
set wildmenu
" テキスト挿入中の自動折り返しを日本語に対応させる
set formatoptions+=mM
" 日本語整形スクリプト(by. 西岡拓洋さん)用の設定
let format_allow_over_tw = 1    " ぶら下り可能幅
" シンタックス
syntax on

" 移動
noremap j gj
noremap k gk
 
"---------------------------------------------------------------------------
" GUI固有ではない画面表示の設定:
"
" 行番号を非表示 (number:表示)
set number
" ルーラーを表示 (noruler:非表示)
set ruler
" タブや改行を表示 (list:表示)
set nolist
" どの文字でタブや改行を表示するかを設定(表示しないように)
set listchars=
" set listchars=tab:,extends:<,trail:-,eol:<
" 長い行を折り返して表示 (nowrap:折り返さない)
set wrap
" 常にステータス行を表示 (詳細は:he laststatus)
set laststatus=2
" コマンドラインの高さ (Windows用gvim使用時はgvimrcを編集すること)
set cmdheight=2
" コマンドをステータス行に表
set showcmd
" タイトルバーの表示を消す
set notitle
" バックアップの場所
set backupdir=~/.vimbckup/
" スワップファイルの場所
set directory=~/.vimswp/

" タグジャンプ
nnoremap <F3> :vsp<CR> :exe("tjump ".expand('<cword>'))<CR>

" F1でファイラーを開く
noremap <F1> :NERDTree<CR>
" F2でバッファの一覧
noremap <F2> :Unite buffer<CR>

" クリップボードと同期
set clipboard=unnamed,autoselect
