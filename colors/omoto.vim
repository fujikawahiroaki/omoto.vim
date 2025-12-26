" Vim color file
" omoto
" Created by fujikawahiroaki with ThemeCrator (https://github.com/mswift42/themecreator)

hi clear

if exists("syntax on")
syntax reset
endif

set t_Co=256
let g:colors_name = "omoto"

" カラーパレット定義

" 背景色 
let s:bg="#233121"         " メイン背景（万年青の地合いをイメージ）
let s:bg2="#182417"        " UI背景・ガーター（暗め）
let s:bg3="#2e402b"        " ステータスライン・ポップアップ (明るめ)
let s:bg4="#3d4d3b"        " 選択範囲 (さらに明るめ)
let s:bg_cursor="#2a3b28"  " カーソル行 (微光)

" 文字色基盤
let s:fg="#e9ead9"         " メイン文字 (聖雲殿の覆輪をイメージ)
let s:fg2="#d6d7c8"        " サブ文字
let s:fg3="#c4c5b6"        " 控えめな文字
let s:fg4="#b1b2a5"        " 暗めの文字 (ヒントなど)

" アクセントカラー

" 泉: 数字・定数・プリプロセッサ用
let s:spring="#99b0c2"

" 鉢: 関数・型・クラス用
" 錦鉢の定番絵付け・青海波の青をイメージ 
let s:pottery="#7ca6a2"

" 斑: キーワード・制御構文用
" 新生殿の雅糸竜のような乳白色
let s:gold="#e2e1b2"

" 朝霧: コメント用
let s:fog="#7c8f85"

" 新芽: 文字列用
let s:sprout="#b8d99c"

" 警告色
" 朽葉系の和色を用い、万年青が枯れるさまをイメージ
" 万年青が枯れたらヤバいだろ!
let s:warning="#db8449"   " 赤朽葉色
let s:warning2="#d3a243"  " 黄朽葉色

let s:keyword  = s:gold
let s:builtin  = s:fg
let s:const    = s:spring
let s:comment  = s:fog
let s:func     = s:pottery
let s:str      = s:sprout
let s:type     = s:pottery
let s:var      = s:fg
let s:preproc  = s:spring

" ハイライト設定

exe 'hi Normal guifg='s:fg' guibg='s:bg
exe 'hi Cursor guifg='s:bg' guibg='s:fg

" カーソル行
exe 'hi CursorLine  guibg='s:bg_cursor
exe 'hi CursorColumn  guibg='s:bg_cursor

" 行番号・SignColumn
exe 'hi LineNr guifg='s:fg3' guibg='s:bg
exe 'hi CursorLineNr guifg='s:str' guibg='s:bg_cursor
exe 'hi SignColumn guifg='s:comment' guibg='s:bg
exe 'hi FoldColumn guifg='s:comment' guibg='s:bg

" ウィンドウ区切り線
exe 'hi VertSplit guifg='s:bg3' guibg='s:bg
exe 'hi ColorColumn  guibg='s:bg2

" UI周り
exe 'hi MatchParen guifg='s:warning2'  gui=underline'
exe 'hi StatusLine guifg='s:fg2' guibg='s:bg3' gui=bold'
exe 'hi Pmenu guifg='s:fg' guibg='s:bg3
exe 'hi PmenuSel  guifg='s:fg' guibg='s:bg4
exe 'hi PmenuSbar guibg='s:bg3
exe 'hi PmenuThumb guibg='s:fg3
exe 'hi IncSearch guifg='s:bg' guibg='s:keyword
exe 'hi Search   gui=underline'
exe 'hi Directory guifg='s:const
exe 'hi Folded guifg='s:fg4' guibg='s:bg2
exe 'hi WildMenu guifg='s:str' guibg='s:bg3

" シンタックスハイライト

" コメント
exe 'hi Comment guifg='s:comment' gui=italic'

" 定数・数値
exe 'hi Constant guifg='s:const
exe 'hi Number guifg='s:const
exe 'hi Boolean guifg='s:const
exe 'hi Float guifg='s:const
exe 'hi Character guifg='s:const

" 文字列
exe 'hi String guifg='s:str

" 関数・型
exe 'hi Function guifg='s:func' gui=bold'
exe 'hi Type guifg='s:type' gui=italic'
exe 'hi StorageClass guifg='s:type' gui=italic'
exe 'hi Structure guifg='s:type

" キーワード
exe 'hi Keyword guifg='s:keyword' gui=bold'
exe 'hi Statement guifg='s:keyword' gui=bold'
exe 'hi Conditional guifg='s:keyword' gui=bold'
exe 'hi Repeat guifg='s:keyword' gui=bold'
exe 'hi Label guifg='s:keyword
exe 'hi Operator guifg='s:fg2
exe 'hi Exception guifg='s:keyword

" その他
exe 'hi PreProc guifg='s:preproc
exe 'hi Identifier guifg='s:fg
exe 'hi Special guifg='s:fg
exe 'hi SpecialKey guifg='s:fg2' guibg='s:bg2
exe 'hi Tag guifg='s:keyword
exe 'hi Title guifg='s:fg'  gui=bold'
exe 'hi Todo guifg='s:fg2'  gui=inverse,bold'
exe 'hi Underlined   gui=underline'
exe 'hi NonText guifg='s:bg4' guibg='s:bg

" エラー・Diff
exe 'hi ErrorMsg guifg='s:warning' guibg='s:bg2' gui=bold'
exe 'hi WarningMsg guifg='s:fg' guibg='s:warning2
exe 'hi DiffAdd guifg=#fafafa guibg=#123d0f gui=bold'
exe 'hi DiffDelete guibg='s:bg2
exe 'hi DiffChange  guibg=#151b3c guifg=#fafafa'
exe 'hi DiffText guifg=#ffffff guibg=#ff0000 gui=bold'

" --- Neovim Terminal Mode ---
let g:terminal_color_0 = s:bg2
let g:terminal_color_1 = s:warning
let g:terminal_color_2 = s:sprout
let g:terminal_color_3 = s:gold
let g:terminal_color_4 = s:pottery
let g:terminal_color_5 = s:warning2
let g:terminal_color_6 = s:fg3
let g:terminal_color_7 = s:fg
let g:terminal_color_8 = s:bg4
let g:terminal_color_9 = s:spring
let g:terminal_color_10 = s:str
let g:terminal_color_11 = s:keyword
let g:terminal_color_12 = s:func
let g:terminal_color_13 = s:const
let g:terminal_color_14 = s:fg2
let g:terminal_color_15 = s:comment

" 言語別設定

" Ruby
exe 'hi rubyAttribute guifg='s:builtin
exe 'hi rubyLocalVariableOrMethod guifg='s:fg
exe 'hi rubyGlobalVariable guifg='s:var' gui=italic'
exe 'hi rubyInstanceVariable guifg='s:var
exe 'hi rubyKeyword guifg='s:keyword
exe 'hi rubyKeywordAsMethod guifg='s:keyword' gui=bold'
exe 'hi rubyClassDeclaration guifg='s:keyword' gui=bold'
exe 'hi rubyClass guifg='s:keyword' gui=bold'
exe 'hi rubyNumber guifg='s:const

" Python
exe 'hi pythonBuiltinFunc guifg='s:builtin

" Go
exe 'hi goBuiltins guifg='s:builtin
let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_build_constraints      = 1
let g:go_highlight_chan_whitespace_error  = 1
let g:go_highlight_extra_types            = 1
let g:go_highlight_fields                 = 1
let g:go_highlight_format_strings         = 1
let g:go_highlight_function_calls         = 1
let g:go_highlight_function_parameters    = 1
let g:go_highlight_functions              = 1
let g:go_highlight_generate_tags          = 1
let g:go_highlight_operators              = 1
let g:go_highlight_space_tab_error        = 1
let g:go_highlight_string_spellcheck      = 1
let g:go_highlight_types                  = 1
let g:go_highlight_variable_assignments   = 1
let g:go_highlight_variable_declarations  = 1

" JavaScript
exe 'hi jsBuiltins guifg='s:builtin
exe 'hi jsFunction guifg='s:keyword' gui=bold'
exe 'hi jsGlobalObjects guifg='s:type
exe 'hi jsAssignmentExps guifg='s:var

" HTML
exe 'hi htmlLink guifg='s:var' gui=underline'
exe 'hi htmlStatement guifg='s:keyword
exe 'hi htmlSpecialTagName guifg='s:keyword

" Markdown
exe 'hi mkdCode guifg='s:builtin

" Plugin Overrides

" Fern / NerdTree
exe 'hi FernNormal guibg='s:bg
exe 'hi NERDTreeNormal guibg='s:bg

" Floating Window & coc.nvim
exe 'hi NormalFloat guifg='s:fg' guibg='s:bg3
exe 'hi FloatBorder guifg='s:fg3' guibg='s:bg3
exe 'hi CocFloating guifg='s:fg' guibg='s:bg3

" coc Diagnostics
exe 'hi CocErrorFloat guifg='s:warning' guibg='s:bg3' gui=bold'
exe 'hi CocWarningFloat guifg='s:warning2' guibg='s:bg3' gui=bold'
exe 'hi CocInfoFloat guifg='s:fg3' guibg='s:bg3' gui=bold'
exe 'hi CocHintFloat guifg='s:fg4' guibg='s:bg3' gui=bold'

" coc Diagnostics (Sign Column)
exe 'hi CocErrorSign guifg='s:warning' guibg='s:bg
exe 'hi CocWarningSign guifg='s:warning2' guibg='s:bg
exe 'hi CocInfoSign guifg='s:fg3' guibg='s:bg
exe 'hi CocHintSign guifg='s:fg4' guibg='s:bg

" Highlight Text
exe 'hi CocHighlightText guibg='s:bg4' gui=bold'
