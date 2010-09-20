" Vim syntax file
" Language:		AFC
" Maintainer:		Adriano Almeida <adrianoalmeida7@gmail.com>
" URL:			TODO
" ----------------------------------------------------------------------------

syn match afcStructure "\[section\s.*\]"
syn match afcStructure "\[chapter\s.*\]"
syn match afcStructure "\[quote\s.*\]"

syn match afcContent "\[list\]"
syn match afcContent "\[\/list\]"

syn match afcComment "\[TODO\s.*\]"
syn match afcComment "\[todo\s.*\]"
syn match afcComment "\[index\s.*\]"

syn match afcCode 		"%%.*%%"

syn region afcNotes start="\[note\]" end="\[\/note\]" display

hi def link afcStructure    Keyword
hi def link afcComment    	Comment
hi def link afcNotes    	Comment
hi def link afcContent    	Type
hi def link afcCode	    	Constant

"Type = verde
let b:current_syntax = "afc"