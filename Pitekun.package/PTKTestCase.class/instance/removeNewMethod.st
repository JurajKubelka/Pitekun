mock support
removeNewMethod
	| tool |
	tool := AbstractTool new.
	(newClass includesLocalSelector: newSelector)
		ifTrue: [ newClass removeSelector: newSelector ]
		ifFalse: [ self removeNonLocalSelector: newSelector ].