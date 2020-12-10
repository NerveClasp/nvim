" Leader Key Maps

let @s = 'veS"'

" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100

" Coc Search & refactor
nnoremap <leader>? :CocSearch <C-R>=expand("<cword>")<CR><CR>
let g:which_key_map['?'] = 'search word'

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler


" Single mappings
let g:which_key_map['/'] = [ ':call Comment()'                    , 'comment' ]
let g:which_key_map['.'] = [ ':e $MYVIMRC'                        , 'open init' ]
let g:which_key_map[';'] = [ ':Commands'                          , 'commands' ]
let g:which_key_map['='] = [ '<C-W>='                             , 'balance windows' ]
let g:which_key_map['d'] = [ ':Bdelete'                           , 'delete buffer']
let g:which_key_map['e'] = [ ':CocCommand explorer'               , 'explorer' ]
let g:which_key_map['h'] = [ '<C-W>s'                             , 'split below']
let g:which_key_map['m'] = [ ':call WindowSwap#EasyWindowSwap()'  , 'move window' ]
let g:which_key_map['n'] = [ ':let @/ = ""'                       , 'no highlight' ]
let g:which_key_map['p'] = [ ':Files'                             , 'search files' ]
let g:which_key_map['q'] = [ 'q'                                  , 'quit' ]
let g:which_key_map['r'] = [ ':RnvimrToggle'                      , 'ranger' ]
let g:which_key_map['T'] = [ ':TSHighlightCapturesUnderCursor'    , 'treesitter highlight' ]
let g:which_key_map['u'] = [ ':UndotreeToggle'                    , 'undo tree']
let g:which_key_map['v'] = [ '<C-W>v'                             , 'split right']
let g:which_key_map['W'] = [ 'w'                                  , 'write' ]
let g:which_key_map['z'] = [ 'Goyo'                               , 'zen' ]

" Ukrainian version
" Single mappings
" let g:which_key_map['.'] = [ ':call Comment()'                    , 'comment' ]
" let g:which_key_map['ю'] = [ ':e $MYVIMRC'                        , 'open init' ]
" let g:which_key_map['ж'] = [ ':Commands'                          , 'commands' ]
" let g:which_key_map['в'] = [ ':Bdelete'                           , 'delete buffer']
" let g:which_key_map['у'] = [ ':CocCommand explorer'               , 'explorer' ]
" let g:which_key_map['р'] = [ '<C-W>s'                             , 'split below']
" let g:which_key_map['ь'] = [ ':call WindowSwap#EasyWindowSwap()'  , 'move window' ]
" let g:which_key_map['т'] = [ ':let @/ = ""'                       , 'no highlight' ]
" let g:which_key_map['з'] = [ ':Files'                             , 'search files' ]
" let g:which_key_map['й'] = [ 'q'                                  , 'quit' ]
" let g:which_key_map['к'] = [ ':RnvimrToggle'                      , 'ranger' ]
" let g:which_key_map['Е'] = [ ':TSHighlightCapturesUnderCursor'    , 'treesitter highlight' ]
" let g:which_key_map['г'] = [ ':UndotreeToggle'                    , 'undo tree']
" let g:which_key_map['м'] = [ '<C-W>v'                             , 'split right']
" let g:which_key_map['Ц'] = [ 'w'                                  , 'write' ]
" let g:which_key_map['я'] = [ 'Goyo'                               , 'zen' ]

" Group mappings
" a is for actions
let g:which_key_map.a = {
      \ 'name' : '+actions' ,
      \ 'c' : [':ColorizerToggle'        , 'colorizer'],
      \ 'e' : [':CocCommand explorer'    , 'explorer'],
      \ 'h' : [':let @/ = ""'            , 'remove search highlight'],
      \ 'l' : [':Bracey'                 , 'start live server'],
      \ 'L' : [':BraceyStop'             , 'stop live server'],
      \ 'm' : [':MarkdownPreview'        , 'markdown preview'],
      \ 'M' : [':MarkdownPreviewStop'    , 'markdown preview stop'],
      \ 'n' : [':set nonumber!'          , 'line-numbers'],
      \ 's' : [':s/\%V\(.*\)\%V/"\1"/'   , 'surround'],
      \ 'r' : [':set norelativenumber!'  , 'relative line nums'],
      \ 't' : [':FloatermToggle'         , 'terminal'],
      \ 'v' : [':Codi'                   , 'virtual repl on'],
      \ 'V' : [':Codi!'                  , 'virtual repl off'],
      \ 'w' : [':StripWhitespace'        , 'strip whitespace'],
      \ }

" let g:which_key_map.ф = {
"       \ 'name' : '+actions' ,
"       \ 'с' : [':ColorizerToggle'        , 'colorizer'],
"       \ 'у' : [':CocCommand explorer'    , 'explorer'],
"       \ 'р' : [':let @/ = ""'            , 'remove search highlight'],
"       \ 'д' : [':Bracey'                 , 'start live server'],
"       \ 'Д' : [':BraceyStop'             , 'stop live server'],
"       \ 'ь' : [':MarkdownPreview'        , 'markdown preview'],
"       \ 'Ь' : [':MarkdownPreviewStop'    , 'markdown preview stop'],
"       \ 'т' : [':set nonumber!'          , 'line-numbers'],
"       \ 'і' : [':s/\%V\(.*\)\%V/"\1"/'   , 'surround'],
"       \ 'к' : [':set norelativenumber!'  , 'relative line nums'],
"       \ 'е' : [':FloatermToggle'         , 'terminal'],
"       \ 'м' : [':Codi'                   , 'virtual repl on'],
"       \ 'М' : [':Codi!'                  , 'virtual repl off'],
"       \ 'ц' : [':StripWhitespace'        , 'strip whitespace'],
"       \ }
" b is for buffer
let g:which_key_map.b = {
      \ 'name' : '+buffer' ,
      \ '>' : [':BufferMoveNext'        , 'move next'],
      \ '<' : [':BufferMovePrevious'    , 'move prev'],
      \ '1' : [':BufferGoto 1'          , 'buffer 1'],
      \ '2' : [':BufferGoto 2'          , 'buffer 2'],
      \ '3' : [':BufferGoto 3'          , 'buffer 3'],
      \ '4' : [':BufferGoto 4'          , 'buffer 4'],
      \ '5' : [':BufferGoto 5'          , 'buffer 5'],
      \ '6' : [':BufferGoto 6'          , 'buffer 6'],
      \ '7' : [':BufferGoto 7'          , 'buffer 7'],
      \ '8' : [':BufferGoto 8'          , 'buffer 8'],
      \ '9' : [':BufferGoto 9'          , 'buffer 9'],
      \ '0' : [':BufferGoto 0'          , 'buffer 0'],
      \ 'b' : [':BufferPick'            , 'pick buffer'],
      \ 'd' : [':Bdelete'               , 'delete-buffer'],
      \ 'D' : [':BufferOrderByDirectory', 'order by directory'],
      \ 'f' : ['bfirst'                 , 'first-buffer'],
      \ 'l' : ['blast'                  , 'last buffer'],
      \ 'L' : [':BufferOrderByLanguage' , 'order by language'],
      \ 'n' : ['bnext'                  , 'next-buffer'],
      \ 'p' : ['bprevious'              , 'previous-buffer'],
      \ '?' : ['Buffers'                , 'fzf-buffer'],
      \ }

" let g:which_key_map.и = {
      " \ 'name' : '+buffer' ,
      " \ 'Ю' : [':BufferMoveNext'        , 'move next'],
      " \ 'Б' : [':BufferMovePrevious'    , 'move prev'],
      " \ '1' : [':BufferGoto 1'          , 'buffer 1'],
      " \ '2' : [':BufferGoto 2'          , 'buffer 2'],
      " \ '3' : [':BufferGoto 3'          , 'buffer 3'],
      " \ '4' : [':BufferGoto 4'          , 'buffer 4'],
      " \ '5' : [':BufferGoto 5'          , 'buffer 5'],
      " \ '6' : [':BufferGoto 6'          , 'buffer 6'],
      " \ '7' : [':BufferGoto 7'          , 'buffer 7'],
      " \ '8' : [':BufferGoto 8'          , 'buffer 8'],
      " \ '9' : [':BufferGoto 9'          , 'buffer 9'],
      " \ '0' : [':BufferGoto 0'          , 'buffer 0'],
      " \ 'и' : [':BufferPick'            , 'pick buffer'],
      " \ 'в' : [':Bdelete'               , 'delete-buffer'],
      " \ 'В' : [':BufferOrderByDirectory', 'order by directory'],
      " \ 'а' : ['bfirst'                 , 'first-buffer'],
      " \ 'д' : ['blast'                  , 'last buffer'],
      " \ 'Д' : [':BufferOrderByLanguage' , 'order by language'],
      " \ 'т' : ['bnext'                  , 'next-buffer'],
      " \ 'з' : ['bprevious'              , 'previous-buffer'],
      " \ ',' : ['Buffers'                , 'fzf-buffer'],
      " \ }
" f is for find and replace
let g:which_key_map.f = {
      \ 'name' : '+find & replace' ,
      \ 'b' : [':Farr --source=vimgrep'    , 'buffer'],
      \ 'p' : [':Farr --source=rgnvim'     , 'project'],
      \ }

" let g:which_key_map.а = {
"       \ 'name' : '+find & replace' ,
"       \ 'и' : [':Farr --source=vimgrep'    , 'buffer'],
"       \ 'з' : [':Farr --source=rgnvim'     , 'project'],
"       \ }
" k is for task
let g:which_key_map.k = {
      \ 'name' : '+task' ,
      \ 'c' : [':AsyncTask file-compile'      , 'compile file'],
      \ 'b' : [':AsyncTask project-build'     , 'build project'],
      \ 'e' : [':AsyncTaskEdit'               , 'edit local tasks'],
      \ 'f' : [':AsyncTaskFzf'                , 'find task'],
      \ 'g' : [':AsyncTaskEdit!'              , 'edit global tasks'],
      \ 'h' : [':AsyncTaskList!'              , 'list hidden tasks'],
      \ 'l' : [':CocList tasks'               , 'list tasks'],
      \ 'm' : [':AsyncTaskMacro'              , 'macro help'],
      \ 'o' : [':copen'                       , 'open task view'],
      \ 'r' : [':AsyncTask file-run'          , 'run file'],
      \ 'p' : [':AsyncTask project-run'       , 'run project'],
      \ 'x' : [':cclose'                      , 'close task view'],
      \ }
      " \ 'l' : [':AsyncTaskList'               , 'list tasks'],
" let g:which_key_map.л = {
"       \ 'name' : '+task' ,
"       \ 'с' : [':AsyncTask file-compile'      , 'compile file'],
"       \ 'и' : [':AsyncTask project-build'     , 'build project'],
"       \ 'у' : [':AsyncTaskEdit'               , 'edit local tasks'],
"       \ 'а' : [':AsyncTaskFzf'                , 'find task'],
"       \ 'п' : [':AsyncTaskEdit!'              , 'edit global tasks'],
"       \ 'р' : [':AsyncTaskList!'              , 'list hidden tasks'],
"       \ 'д' : [':CocList tasks'               , 'list tasks'],
"       \ 'ь' : [':AsyncTaskMacro'              , 'macro help'],
"       \ 'щ' : [':copen'                       , 'open task view'],
"       \ 'к' : [':AsyncTask file-run'          , 'run file'],
"       \ 'з' : [':AsyncTask project-run'       , 'run project'],
"       \ 'ч' : [':cclose'                      , 'close task view'],
"       \ }

" s is for search
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '/' : [':History/'              , 'history'],
      \ ';' : [':Commands'              , 'commands'],
      \ 'a' : [':Ag'                    , 'text Ag'],
      \ 'b' : [':BLines'                , 'current buffer'],
      \ 'B' : [':Buffers'               , 'open buffers'],
      \ 'c' : [':Commits'               , 'commits'],
      \ 'C' : [':BCommits'              , 'buffer commits'],
      \ 'f' : [':Files'                 , 'files'],
      \ 'g' : [':GFiles'                , 'git files'],
      \ 'G' : [':GFiles?'               , 'modified git files'],
      \ 'h' : [':History'               , 'file history'],
      \ 'H' : [':History:'              , 'command history'],
      \ 'l' : [':Lines'                 , 'lines'] ,
      \ 'm' : [':Marks'                 , 'marks'] ,
      \ 'M' : [':Maps'                  , 'normal maps'] ,
      \ 'p' : [':Helptags'              , 'help tags'] ,
      \ 'P' : [':Tags'                  , 'project tags'],
      \ 's' : [':CocList snippets'      , 'snippets'],
      \ 'S' : [':Colors'                , 'color schemes'],
      \ 't' : [':Rg'                    , 'text Rg'],
      \ 'T' : [':BTags'                 , 'buffer tags'],
      \ 'w' : [':Windows'               , 'search windows'],
      \ 'y' : [':Filetypes'             , 'file types'],
      \ 'z' : [':FZF'                   , 'FZF'],
      \ }
      " \ 's' : [':Snippets'     , 'snippets'],
" let g:which_key_map.і = {
"       \ 'name' : '+search' ,
"       \ '.' : [':History/'              , 'history'],
"       \ 'ж' : [':Commands'              , 'commands'],
"       \ 'ф' : [':Ag'                    , 'text Ag'],
"       \ 'и' : [':BLines'                , 'current buffer'],
"       \ 'И' : [':Buffers'               , 'open buffers'],
"       \ 'с' : [':Commits'               , 'commits'],
"       \ 'С' : [':BCommits'              , 'buffer commits'],
"       \ 'а' : [':Files'                 , 'files'],
"       \ 'п' : [':GFiles'                , 'git files'],
"       \ 'П' : [':GFiles?'               , 'modified git files'],
"       \ 'р' : [':History'               , 'file history'],
"       \ 'Р' : [':History:'              , 'command history'],
"       \ 'д' : [':Lines'                 , 'lines'] ,
"       \ 'ь' : [':Marks'                 , 'marks'] ,
"       \ 'Ь' : [':Maps'                  , 'normal maps'] ,
"       \ 'з' : [':Helptags'              , 'help tags'] ,
"       \ 'З' : [':Tags'                  , 'project tags'],
"       \ 'і' : [':CocList snippets'      , 'snippets'],
"       \ 'І' : [':Colors'                , 'color schemes'],
"       \ 'е' : [':Rg'                    , 'text Rg'],
"       \ 'Е' : [':BTags'                 , 'buffer tags'],
"       \ 'ц' : [':Windows'               , 'search windows'],
"       \ 'н' : [':Filetypes'             , 'file types'],
"       \ 'я' : [':FZF'                   , 'FZF'],
"       \ }

let g:which_key_map.S = {
      \ 'name' : '+Session' ,
      \ 'c' : [':SClose'          , 'Close Session']  ,
      \ 'd' : [':SDelete'         , 'Delete Session'] ,
      \ 'l' : [':SLoad'           , 'Load Session']     ,
      \ 's' : [':Startify'        , 'Start Page']     ,
      \ 'S' : [':SSave'           , 'Save Session']   ,
      \ }
" let g:which_key_map.І = {
"       \ 'name' : '+Session' ,
"       \ 'с' : [':SClose'          , 'Close Session']  ,
"       \ 'в' : [':SDelete'         , 'Delete Session'] ,
"       \ 'д' : [':SLoad'           , 'Load Session']     ,
"       \ 'і' : [':Startify'        , 'Start Page']     ,
"       \ 'І' : [':SSave'           , 'Save Session']   ,
"       \ }

" g is for git
let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ 'a' : [':Git add .'                        , 'add all'],
      \ 'A' : [':Git add %'                        , 'add current'],
      \ 'b' : [':Git blame'                        , 'blame'],
      \ 'B' : [':GBrowse'                          , 'browse'],
      \ 'c' : [':Git commit'                       , 'commit'],
      \ 'd' : [':Git diff'                         , 'diff'],
      \ 'D' : [':Gdiffsplit'                       , 'diff split'],
      \ 'G' : [':Gstatus'                          , 'status'],
      \ 'h' : [':GitGutterLineHighlightsToggle'    , 'highlight hunks'],
      \ 'H' : ['<Plug>(GitGutterPreviewHunk)'      , 'preview hunk'],
      \ 'i' : [':Gist -b'                          , 'post gist'],
      \ 'j' : ['<Plug>(GitGutterNextHunk)'         , 'next hunk'],
      \ 'k' : ['<Plug>(GitGutterPrevHunk)'         , 'prev hunk'],
      \ 'l' : [':Git log'                          , 'log'],
      \ 'm' : ['<Plug>(git-messenger)'             , 'message'],
      \ 'p' : [':Git push'                         , 'push'],
      \ 'P' : [':Git pull'                         , 'pull'],
      \ 'r' : [':GRemove'                          , 'remove'],
      \ 's' : ['<Plug>(GitGutterStageHunk)'        , 'stage hunk'],
      \ 'S' : [':!git status'                      , 'status'],
      \ 't' : [':GitGutterSignsToggle'             , 'toggle signs'],
      \ 'u' : ['<Plug>(GitGutterUndoHunk)'         , 'undo hunk'],
      \ 'v' : [':GV'                               , 'view commits'],
      \ 'V' : [':GV!'                              , 'view buffer commits'],
      \ 'f' : [':diffget //2'                      , 'choose left diff'],
      \ 'g' : [':diffget //3'                      , 'choose right diff'],
      \ }
" let g:which_key_map.п = {
      " \ 'name' : '+git' ,
      " \ 'ф' : [':Git add .'                        , 'add all'],
      " \ 'Ф' : [':Git add %'                        , 'add current'],
      " \ 'и' : [':Git blame'                        , 'blame'],
      " \ 'И' : [':GBrowse'                          , 'browse'],
      " \ 'с' : [':Git commit'                       , 'commit'],
      " \ 'в' : [':Git diff'                         , 'diff'],
      " \ 'В' : [':Gdiffsplit'                       , 'diff split'],
      " \ 'П' : [':Gstatus'                          , 'status'],
      " \ 'р' : [':GitGutterLineHighlightsToggle'    , 'highlight hunks'],
      " \ 'Р' : ['<Plug>(GitGutterPreviewHunk)'      , 'preview hunk'],
      " \ 'ш' : [':Gist -b'                          , 'post gist'],
      " \ 'о' : ['<Plug>(GitGutterNextHunk)'         , 'next hunk'],
      " \ 'л' : ['<Plug>(GitGutterPrevHunk)'         , 'prev hunk'],
      " \ 'д' : [':Git log'                          , 'log'],
      " \ 'ь' : ['<Plug>(git-messenger)'             , 'message'],
      " \ 'з' : [':Git push'                         , 'push'],
      " \ 'З' : [':Git pull'                         , 'pull'],
      " \ 'к' : [':GRemove'                          , 'remove'],
      " \ 'і' : ['<Plug>(GitGutterStageHunk)'        , 'stage hunk'],
      " \ 'І' : [':!git status'                      , 'status'],
      " \ 'е' : [':GitGutterSignsToggle'             , 'toggle signs'],
      " \ 'г' : ['<Plug>(GitGutterUndoHunk)'         , 'undo hunk'],
      " \ 'м' : [':GV'                               , 'view commits'],
      " \ 'М' : [':GV!'                              , 'view buffer commits'],
      " \ 'а' : [':diffget //2'                      , 'choose left diff'],
      " \ 'п' : [':diffget //3'                      , 'choose right diff'],
      " \ }
      " \ 'g' : [':GGrep'                            , 'git grep'],

let g:which_key_map.G = {
      \ 'name' : '+gist' ,
      \ 'a' : [':Gist -a'                          , 'post gist anon'],
      \ 'b' : [':Gist -b'                          , 'post gist browser'],
      \ 'd' : [':Gist -d'                          , 'delete gist'],
      \ 'e' : [':Gist -e'                          , 'edit gist'],
      \ 'l' : [':Gist -l'                          , 'list public gists'],
      \ 's' : [':Gist -ls'                         , 'list starred gists'],
      \ 'm' : [':Gist -m'                          , 'post gist all buffers'],
      \ 'p' : [':Gist -P'                          , 'post public gist '],
      \ 'P' : [':Gist -p'                          , 'post private gist '],
      \ }
" let g:which_key_map.П = {
"       \ 'name' : '+gist' ,
"       \ 'ф' : [':Gist -a'                          , 'post gist anon'],
"       \ 'и' : [':Gist -b'                          , 'post gist browser'],
"       \ 'в' : [':Gist -d'                          , 'delete gist'],
"       \ 'у' : [':Gist -e'                          , 'edit gist'],
"       \ 'д' : [':Gist -l'                          , 'list public gists'],
"       \ 'і' : [':Gist -ls'                         , 'list starred gists'],
"       \ 'ь' : [':Gist -m'                          , 'post gist all buffers'],
"       \ 'з' : [':Gist -P'                          , 'post public gist '],
"       \ 'З' : [':Gist -p'                          , 'post private gist '],
"       \ }

" l is for language server protocol
let g:which_key_map.l = {
      \ 'name' : '+lsp' ,
      \ '.' : [':CocConfig'                          , 'config'],
      \ ';' : ['<Plug>(coc-refactor)'                , 'refactor'],
      \ 'a' : ['<Plug>(coc-codeaction)'              , 'line action'],
      \ 'A' : ['<Plug>(coc-codeaction-selected)'     , 'selected action'],
      \ 'b' : [':CocNext'                            , 'next action'],
      \ 'B' : [':CocPrev'                            , 'prev action'],
      \ 'c' : [':CocList commands'                   , 'commands'],
      \ 'd' : ['<Plug>(coc-definition)'              , 'definition'],
      \ 'D' : ['<Plug>(coc-declaration)'             , 'declaration'],
      \ 'e' : [':CocList extensions'                 , 'extensions'],
      \ 'f' : ['<Plug>(coc-format-selected)'         , 'format selected'],
      \ 'F' : ['<Plug>(coc-format)'                  , 'format'],
      \ 'h' : ['<Plug>(coc-float-hide)'              , 'hide'],
      \ 'i' : ['<Plug>(coc-implementation)'          , 'implementation'],
      \ 'I' : [':CocList diagnostics'                , 'diagnostics'],
      \ 'j' : ['<Plug>(coc-float-jump)'              , 'float jump'],
      \ 'l' : ['<Plug>(coc-codelens-action)'         , 'code lens'],
      \ 'n' : ['<Plug>(coc-diagnostic-next)'         , 'next diagnostic'],
      \ 'N' : ['<Plug>(coc-diagnostic-next-error)'   , 'next error'],
      \ 'o' : [':Vista!!'                            , 'outline'],
      \ 'O' : [':CocList outline'                    , 'outline'],
      \ 'p' : ['<Plug>(coc-diagnostic-prev)'         , 'prev diagnostic'],
      \ 'P' : ['<Plug>(coc-diagnostic-prev-error)'   , 'prev error'],
      \ 'q' : ['<Plug>(coc-fix-current)'             , 'quickfix'],
      \ 'r' : ['<Plug>(coc-references)'              , 'references'],
      \ 'R' : ['<Plug>(coc-rename)'                  , 'rename'],
      \ 's' : [':CocList -I symbols'                 , 'references'],
      \ 'S' : [':CocList snippets'                   , 'snippets'],
      \ 't' : ['<Plug>(coc-type-definition)'         , 'type definition'],
      \ 'u' : [':CocListResume'                      , 'resume list'],
      \ 'U' : [':CocUpdate'                          , 'update CoC'],
      \ 'z' : [':CocDisable'                         , 'disable CoC'],
      \ 'Z' : [':CocEnable'                          , 'enable CoC'],
      \ }
" let g:which_key_map.д = {
"       \ 'name' : '+lsp' ,
"       \ 'ю' : [':CocConfig'                          , 'config'],
"       \ 'ж' : ['<Plug>(coc-refactor)'                , 'refactor'],
"       \ 'ф' : ['<Plug>(coc-codeaction)'              , 'line action'],
"       \ 'Ф' : ['<Plug>(coc-codeaction-selected)'     , 'selected action'],
"       \ 'и' : [':CocNext'                            , 'next action'],
"       \ 'И' : [':CocPrev'                            , 'prev action'],
"       \ 'с' : [':CocList commands'                   , 'commands'],
"       \ 'в' : ['<Plug>(coc-definition)'              , 'definition'],
"       \ 'В' : ['<Plug>(coc-declaration)'             , 'declaration'],
"       \ 'у' : [':CocList extensions'                 , 'extensions'],
"       \ 'а' : ['<Plug>(coc-format-selected)'         , 'format selected'],
"       \ 'А' : ['<Plug>(coc-format)'                  , 'format'],
"       \ 'р' : ['<Plug>(coc-float-hide)'              , 'hide'],
"       \ 'ш' : ['<Plug>(coc-implementation)'          , 'implementation'],
"       \ 'Ш' : [':CocList diagnostics'                , 'diagnostics'],
"       \ 'о' : ['<Plug>(coc-float-jump)'              , 'float jump'],
"       \ 'д' : ['<Plug>(coc-codelens-action)'         , 'code lens'],
"       \ 'т' : ['<Plug>(coc-diagnostic-next)'         , 'next diagnostic'],
"       \ 'Т' : ['<Plug>(coc-diagnostic-next-error)'   , 'next error'],
"       \ 'щ' : [':Vista!!'                            , 'outline'],
"       \ 'Щ' : [':CocList outline'                    , 'outline'],
"       \ 'з' : ['<Plug>(coc-diagnostic-prev)'         , 'prev diagnostic'],
"       \ 'З' : ['<Plug>(coc-diagnostic-prev-error)'   , 'prev error'],
"       \ 'й' : ['<Plug>(coc-fix-current)'             , 'quickfix'],
"       \ 'к' : ['<Plug>(coc-references)'              , 'references'],
"       \ 'К' : ['<Plug>(coc-rename)'                  , 'rename'],
"       \ 'і' : [':CocList -I symbols'                 , 'references'],
"       \ 'І' : [':CocList snippets'                   , 'snippets'],
"       \ 'е' : ['<Plug>(coc-type-definition)'         , 'type definition'],
"       \ 'г' : [':CocListResume'                      , 'resume list'],
"       \ 'Г' : [':CocUpdate'                          , 'update CoC'],
"       \ 'я' : [':CocDisable'                         , 'disable CoC'],
"       \ 'Я' : [':CocEnable'                          , 'enable CoC'],
"       \ }
      " \ 'o' : ['<Plug>(coc-openlink)'                , 'open link'],

      " \ ';' : [':FloatermNew --wintype=normal --height=6'        , 'terminal'],
" t is for terminal
      " \ ';' : [':FloatermNew --wintype=normal --position=right --width=42'        , 'terminal'],
let g:which_key_map.t = {
      \ 'name' : '+terminal' ,
      \ ';' : [':FloatermNew'                                   , 'terminal'],
      \ 'f' : [':FloatermNew fzf'                               , 'fzf'],
      \ 'g' : [':FloatermNew lazygit'                           , 'git'],
      \ 'd' : [':FloatermNew lazydocker'                        , 'docker'],
      \ 'n' : [':FloatermNew node'                              , 'node'],
      \ 'm' : [':FloatermNew lazynpm'                           , 'npm'],
      \ 'r' : [':FloatermNew ranger'                            , 'ranger'],
      \ 't' : [':FloatermToggle'                                , 'toggle'],
      \ 'y' : [':FloatermNew ytop'                              , 'ytop'],
      \ 's' : [':FloatermNew ncdu'                              , 'ncdu'],
      \ }
" let g:which_key_map.е = {
"       \ 'name' : '+terminal' ,
"       \ 'ж' : [':FloatermNew --wintype=normal --position=right --width=42'        , 'terminal'],
"       \ 'а' : [':FloatermNew fzf'                               , 'fzf'],
"       \ 'п' : [':FloatermNew lazygit'                           , 'git'],
"       \ 'в' : [':FloatermNew lazydocker'                        , 'docker'],
"       \ 'т' : [':FloatermNew node'                              , 'node'],
"       \ 'Т' : [':FloatermNew nnn'                               , 'nnn'],
"       \ 'з' : [':FloatermNew python'                            , 'python'],
"       \ 'ь' : [':FloatermNew lazynpm'                           , 'npm'],
"       \ 'к' : [':FloatermNew ranger'                            , 'ranger'],
"       \ 'е' : [':FloatermToggle'                                , 'toggle'],
"       \ 'н' : [':FloatermNew ytop'                              , 'ytop'],
"       \ 'і' : [':FloatermNew ncdu'                              , 'ncdu'],
"       \ }

" w is for wiki
let g:which_key_map.w = {
      \ 'name' : '+wiki' ,
      \ 'w' : ['<Plug>VimwikiIndex'                              , 'ncdu'],
      \ 'n' : ['<plug>(wiki-open)'                              , 'ncdu'],
      \ 'j' : ['<plug>(wiki-journal)'                              , 'ncdu'],
      \ 'R' : ['<plug>(wiki-reload)'                              , 'ncdu'],
      \ 'c' : ['<plug>(wiki-code-run)'                              , 'ncdu'],
      \ 'b' : ['<plug>(wiki-graph-find-backlinks)'                              , 'ncdu'],
      \ 'g' : ['<plug>(wiki-graph-in)'                              , 'ncdu'],
      \ 'G' : ['<plug>(wiki-graph-out)'                              , 'ncdu'],
      \ 'l' : ['<plug>(wiki-link-toggle)'                              , 'ncdu'],
      \ 'd' : ['<plug>(wiki-page-delete)'                              , 'ncdu'],
      \ 'r' : ['<plug>(wiki-page-rename)'                              , 'ncdu'],
      \ 't' : ['<plug>(wiki-page-toc)'                              , 'ncdu'],
      \ 'T' : ['<plug>(wiki-page-toc-local)'                              , 'ncdu'],
      \ 'e' : ['<plug>(wiki-export)'                              , 'ncdu'],
      \ 'u' : ['<plug>(wiki-list-uniq)'                              , 'ncdu'],
      \ 'U' : ['<plug>(wiki-list-uniq-local)'                              , 'ncdu'],
      \ }
" w is for wiki
" let g:which_key_map.ц = {
"       \ 'name' : '+wiki' ,
"       \ 'ц' : ['<Plug>VimwikiIndex'                              , 'ncdu'],
"       \ 'т' : ['<plug>(wiki-open)'                              , 'ncdu'],
"       \ 'о' : ['<plug>(wiki-journal)'                              , 'ncdu'],
"       \ 'К' : ['<plug>(wiki-reload)'                              , 'ncdu'],
"       \ 'с' : ['<plug>(wiki-code-run)'                              , 'ncdu'],
"       \ 'и' : ['<plug>(wiki-graph-find-backlinks)'                              , 'ncdu'],
"       \ 'п' : ['<plug>(wiki-graph-in)'                              , 'ncdu'],
"       \ 'П' : ['<plug>(wiki-graph-out)'                              , 'ncdu'],
"       \ 'д' : ['<plug>(wiki-link-toggle)'                              , 'ncdu'],
"       \ 'в' : ['<plug>(wiki-page-delete)'                              , 'ncdu'],
"       \ 'к' : ['<plug>(wiki-page-rename)'                              , 'ncdu'],
"       \ 'е' : ['<plug>(wiki-page-toc)'                              , 'ncdu'],
"       \ 'Е' : ['<plug>(wiki-page-toc-local)'                              , 'ncdu'],
"       \ 'у' : ['<plug>(wiki-export)'                              , 'ncdu'],
"       \ 'г' : ['<plug>(wiki-list-uniq)'                              , 'ncdu'],
"       \ 'Г' : ['<plug>(wiki-list-uniq-local)'                              , 'ncdu'],
"       \ }

" Global
" <Plug>VimwikiIndex
" <Plug>VimwikiTabIndex
" <Plug>VimwikiUISelect
" <Plug>VimwikiDiaryIndex
" <Plug>VimwikiMakeDiaryNote
" <Plug>VimwikiTabMakeDiaryNote
" <Plug>VimwikiMakeYesterdayDiaryNote
" <Plug>VimwikiMakeTomorrowDiaryNote
"
" " Local
" <Plug>Vimwiki2HTML
" <Plug>Vimwiki2HTMLBrowse
" <Plug>VimwikiDiaryGenerateLinks
" <Plug>VimwikiFollowLink
" <Plug>VimwikiSplitLink
" <Plug>VimwikiVSplitLink
" <Plug>VimwikiTabnewLink
" <Plug>VimwikiGoBackLink
" <Plug>VimwikiNextLink
" <Plug>VimwikiPrevLink
" <Plug>VimwikiGoto
" <Plug>VimwikiDeleteLink
" <Plug>VimwikiRenameLink
" <Plug>VimwikiAddHeaderLevel

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
