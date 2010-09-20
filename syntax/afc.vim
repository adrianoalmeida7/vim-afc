" Vim syntax file
" Language:		AFC
" Maintainer:		Adriano Almeida <adrianoalmeida7@gmail.com>
" URL:			TODO
" ----------------------------------------------------------------------------

syn match afcStructure "\[section\s.*\]"
syn match afcStructure "\[chapter\s.*\]"
syn match afcStructure "\[quote\s.*\]"

syn match afcNonPrintable "\[TODO\s.*\]"
syn match afcNonPrintable "\[todo\s.*\]"
syn match afcNonPrintable "\[index\s.*\]"

syn match afcInline			"%%.\{-}%%"
syn match afcInline			"\*\*.\{-}\*\*"
syn match afcInline			"::.\{-}::"
syn match afcInline			"__.\{-}__"

syn region afcNotes start="\[note\]" end="\[\/note\]" display
syn region afcBoxes start="\[box" end="\[\/box\]" display
syn region afcList	start="\[list" end="\[\/list\]" display contains=afcBoxes,afcInline,afcNonPrintable

hi def link afcStructure		Keyword
hi def link afcNonPrintable	Comment
hi def link afcInline				Constant
hi def link afcBoxes				Keyword
hi def link afcList					Type

let b:current_syntax = "afc"