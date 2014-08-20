roassal2 actions
browseImplementorsEvent: aTREvent
	| aMethod anAst |
	self markElement: aTREvent element with: Color red.
	aMethod := aTREvent element model rootNode.
	anAst := aTREvent element model ast.
	spider addImplementorsOfAst: anAst from: aMethod.