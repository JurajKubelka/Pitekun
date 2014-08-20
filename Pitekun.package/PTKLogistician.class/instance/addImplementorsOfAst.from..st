cobweb manipulation
addImplementorsOfAst: anAstNode from: aNode
	"Later we can reuse receiver name (self, instance variable, class name)."
	| implementor |
	self assert: [ anAstNode isKindOf: RBMessageNode ].
	self journalist startChangeReport.
	implementor := self methodCatcher addImplementorsOfAst: anAstNode from: aNode.
	self strategist adjustImplementorsOfAst: anAstNode from: aNode.
	self edgeCatcher addEdgeFrom: aNode to: implementor.
	self civilEngineer integrateChanges.
	self archivist archiveCobweb.
	self journalist publishChangeReport.
	^ implementor