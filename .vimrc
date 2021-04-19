let mapleader = ","

set number
set clipboard=unnamed
set scrolloff=5

" --==== Remapings ====--
inoremap kj <C-[>
inoremap jk <ESC>$a;<ESC>
inoremap jl <ESC>la
inoremap jm <ESC>A {<Enter>
inoremap jn <END>();<ESC>

" Deletion
nnoremap dd "_dd
nnoremap yd dd

" Textobj-function
nnoremap vaf va{o?(<Enter>V
nnoremap daf va{o?(<Enter>Vd
nnoremap yaf va{o?(<Enter>Vy

" Parameter operations
nnoremap <Leader>w /[,(]<Enter>w
nnoremap <Leader>b ?[,(]<Enter>b
nnoremap <Leader>p ?)<Enter>i
nnoremap <Leader>a /)<Enter>i, <ESC>a
nnoremap <Leader>A /);<Enter>i, <ESC>a

" Space mappings
nnoremap <Space>o o<ESC>
nnoremap <Space>O O<ESC>
nnoremap <Space>j :join<Enter>
nnoremap <Space>; a;<ESC>
nnoremap <Space><Space> zz
map <Space>d "_d

" Inline paste
nnoremap <Space>p mzp"zd$"_dd`z"zp
nnoremap <Space>P mzp"zd$"_dd`z"zp

" Fast movement
nnoremap <S-j> 3j
nnoremap <S-k> 3k

" Replace
nnoremap ri{ "_di{P
nnoremap ri' "_di'P
nnoremap ri" "_di"P
nnoremap r$ "_d$P
nnoremap riw "_diwP

" Remove typeparameter surround
nnoremap dst "zdiw"zpbdB

" Visual
vnoremap <Leader>j <ESC>
vnoremap <Leader>v <C-V>

" Save as root
cmap w!! w !sudo tee > /dev/null %