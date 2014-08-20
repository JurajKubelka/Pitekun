report manipulation
adjustImplementorsOf: aSymbol from: aNode
	self filters filterReportWith: (self newContextOf: aSymbol from: aNode)