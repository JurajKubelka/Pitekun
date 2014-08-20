report manipulation
adjustImplementorsOfAst: anAstNode from: aNode
	self filters filterReportWith: (self newContextOf: anAstNode from: aNode)