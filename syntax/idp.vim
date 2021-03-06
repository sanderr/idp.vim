" Vim syntax file
" Language: idp - knowledge representation
" Maintainer: Adriaan Larmuseau
" Latest Revision: Oct 25 2010

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" comments
syn match idp_todo "[tT][oO][dD][oO]" contained
syn match idp_linecomment "//.*$" contains=idp_todo
syn region idp_comment start="/\*" end="\*/" contains=idp_todo

" matches
syn match idp_discl ':'

" keywords
syn match idp_symbol '!'
syn match idp_symbol '?'
syn match idp_symbol '&'
syn match idp_symbol '|'
syn match idp_symbol "<"
syn match idp_symbol ">"
syn match idp_symbol "\~"
syn match idp_symbol "\."
syn match idp_symbol "="
syn match idp_symbol "=>"
syn match idp_symbol "<=>"
syn match idp_symbol "<-"
syn match idp_symbol "->"
syn keyword idp_symbol isa constructed from
" syn keyword idp_key Given Declare Satisfying Find Data Minimize Partial nextgroup=idp_discl skipwhite
syn keyword idp_key theory vocabulary LTCvocabulary nextgroup=idp_discl skipwhite
syn keyword idp_key structure procedure 
syn keyword idp_small type declare partial domain local
syn region idp_type_declaration start="\[" end="\]"

syn keyword idp_builtin int nat string nil
syn keyword idp_function MIN MAX SUCC abs print In include
syn keyword idp_function onemodel

syn keyword idp_statement if then else end return
" aggregates
syn match idp_aggregate "#"
syn keyword idp_aggregate sum max

" numbers & literals
" only simpel numbers as far as I know of taken from prolog 
syn match idp_number "\<[0123456789]*\>'\@!"
syn region idp_string start="\"" skip="\\." end="\""
syn match idp_include_string "<[^ =]*>"
syn keyword idp_boolean true false

" ------------------------
" higlighting
" ------------------------
let b:current_syntax = "idp"

hi def link idp_todo Todo
hi def link idp_comment Comment
hi def link idp_linecomment Comment
hi def link idp_key  PreProc
hi def link idp_small Type
hi def link idp_type_declaration Type
hi def link idp_symbol Statement
hi def link idp_discl Statement
hi def link idp_statement Statement
hi def link idp_builtin Identifier
hi def link idp_function Function
hi def link idp_aggregate Function
hi def link idp_number Constant
hi def link idp_string Constant
hi def link idp_include_string Constant
hi def link idp_boolean Constant
