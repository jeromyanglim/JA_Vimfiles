syntax case ignore
syn clear
syn keyword inquisitElementKeyword contained survey 
syn keyword inquisitElementKeyword contained surveypage 
syn keyword inquisitElementKeyword contained textbox 
syn keyword inquisitElementKeyword contained radiobuttons 
syn keyword inquisitElementKeyword contained checkboxes
syn keyword inquisitElementKeyword contained dropdown 
syn keyword inquisitElementKeyword contained listbox
syn keyword inquisitElementKeyword contained slider
syn keyword inquisitElementKeyword contained caption
syn keyword inquisitElementKeyword contained image
syn keyword inquisitElementKeyword contained text
syn keyword inquisitElementKeyword contained picture
syn keyword inquisitElementKeyword contained video
syn keyword inquisitElementKeyword contained port
syn keyword inquisitElementKeyword contained sound
syn keyword inquisitElementKeyword contained shape
syn keyword inquisitElementKeyword contained systembeep
syn keyword inquisitElementKeyword contained item
syn keyword inquisitElementKeyword contained trial
syn keyword inquisitElementKeyword contained likert
syn keyword inquisitElementKeyword contained openended
syn keyword inquisitElementKeyword contained block
syn keyword inquisitElementKeyword contained page
syn keyword inquisitElementKeyword contained instruct
syn keyword inquisitElementKeyword contained htmlpage
syn keyword inquisitElementKeyword contained expt
syn keyword inquisitElementKeyword contained expressions
syn keyword inquisitElementKeyword contained values
syn keyword inquisitElementKeyword contained response
syn keyword inquisitElementKeyword contained variables
syn keyword inquisitElementKeyword contained counter
syn keyword inquisitElementKeyword contained defaults
syn keyword inquisitElementKeyword contained data
syn keyword inquisitElementKeyword contained include
syn keyword inquisitElementKeyword contained batch
syn keyword inquisitElementKeyword contained script
syn keyword inquisitElementKeyword contained display
syn keyword inquisitElementKeyword contained computer
syn keyword inquisitElementKeyword contained monkey

syn keyword inquisitBooleanKeyword true false

syn match inquisitOperator contained "of" 
syn match inquisitOperator contained "if" 
syn match inquisitOperator contained "="
syn match inquisitOperator contained "+"
syn match inquisitOperator contained "-"
syn match inquisitOperator contained "\*"

syn match inquisitOperator contained "=="
syn match inquisitOperator contained "!="
syn match inquisitOperator contained "<"
syn match inquisitOperator contained ">"
syn match inquisitOperator contained "<="
syn match inquisitOperator contained ">="


syn match inquisitOperator contained "||"
syn match inquisitOperator contained "&&"


syn match inquisitSpecialCharacter "\~\""
syn match inquisitSpecialCharacter "\~t"
syn match inquisitSpecialCharacter "\~r"
syn match inquisitSpecialCharacter "\~n"



syn match inquisitNumber contained "\<[0-9%][0-9%]*"

syn match inquisitDelimiter contained "[,;]"
" syn match inquisitDelimiter "\""

syn region inquisitString start=+"+ end=+"+ 
"syn region inquisitRegion matchgroup=Delimiter start=/(/ matchgroup=Delimiter end=/)/ 
    "\ contains=inquisitString
"syn region inquisitAttributeKeywordArea start="/" end="=" oneline 
    "\contains=inquisitAttributeKeyword
"syn region inquisitAttributeKeyword start=".*" end=".*" oneline 
syn region inquisitElementBlock start="<..*>" end="</..*>" transparent 

syn region inquisitAttributeKeyword contained start="\<" end="\>" 
syn region inquisitAttributeRegion start="\/" end="=" oneline contains=inquisitAttributeKeyword
"syn region inquisitAttributeValueRegion transparent start="\/ *[0-9a-z]* *=" end="[/<]"
"    \ contains=inquisitNumber

syn region inquisitOpenTag start="<\S" end=">" keepend oneline contains=inquisitElementKeyword
syn region inquisitCloseTag start="<\/" end=">" keepend oneline contains=inquisitElementKeyword

syn region inquisitParenthesisRegion start="(" end=")" transparent 
    \ contains=inquisitOperator,inquisitString,inquisitNumber,inquisitDelimiter
syn region inquisitBracketRegion start="\[" end="]" transparent 
    \ contains=inquisitOperator,inquisitString,inquisitNumber,inquisitDelimiter

syn match inquisitHeading1 "^# .*$"  

hi link inquisitElementKeyword Keyword
hi link inquisitOperator Operator
hi link inquisitDelimiter Delimiter  
hi link inquisitString Character
hi link inquisitAttributeKeyword Special
hi link inquisitBooleanKeyword Boolean
hi link inquisitOpenTag Delimiter
hi link inquisitCloseTag Delimiter
hi link inquisitAttributeRegion Delimiter
hi link inquisitNumber Number
hi link inquisitSpecialCharacter Special
hi link inquisitHeading1 HTMLH1
