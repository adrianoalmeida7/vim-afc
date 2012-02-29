" Vim syntax file
" Language:		AFC
" Maintainer:		Adriano Almeida <adrianoalmeida7@gmail.com>
" URL:			http://github.com/adrianoalmeida7/vim-afc
" ----------------------------------------------------------------------------

syn match afcStructure "\[section\s.*\]"
syn match afcStructure "\[chapter\s.*\]"
syn match afcStructure "\[quote\s.*\]"

syn match afcElement "\[img\s.*\]"

syn match afcNonPrintable "\[TODO\s.*\]"
syn match afcNonPrintable "\[todo\s.*\]"
syn match afcNonPrintable "\[index\s.*\]"

syn match afcInline			"%%.\{-}%%"
syn match afcInline			"\*\*.\{-}\*\*"
syn match afcInline			"::.\{-}::"
syn match afcInline			"__.\{-}__"

syn region afcNotes start="\[note\]" end="\[\/note\]" display contains=afcCode, afcInline

syn region afcBoxes start="\[box" end="\[\/box\]" display contains=afcCode, afcInline
syn region afcCode	start=/\[code/ end="\[\/code\]" display
syn region afcCode	start="\[java" end="\[\/java\]" display
syn region afcCode	start="\[ruby" end="\[\/ruby\]" display

syn region afcList	start="\[list" end="\[\/list\]" display contains=afcCode,afcBoxes,afcInline,afcNonPrintable

syn region afcExercise	start="\[exercise\]" end="\[\/exercise\]" display contains=afcCode,afcBoxes,afcInline,afcNonPrintable,afcList
syn region afcExercise	start="\[question\]" end="\[\/question\]" display contains=afcCode,afcBoxes,afcInline,afcNonPrintable,afcList

hi def link afcStructure		Keyword
hi def link afcNonPrintable	Define
hi def link afcInline				Constant
hi def link afcBoxes				Keyword
hi def link afcList					Type
hi def link afcNotes				Define
hi def link afcCode					Comment
hi def link afcExercise			Delimiter
hi def link afcElement      Constant

let b:current_syntax = "afc"
