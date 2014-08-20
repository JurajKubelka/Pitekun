cobweb manipulation
addImplementorsOf: aSymbol from: aNode
	self journalist startChangeReport.
	self methodCatcher addImplementorsOf: aSymbol from: aNode.
	self strategist adjustImplementorsOf: aSymbol from: aNode.
	self edgeCatcher addEdgesFrom: aNode.
	self civilEngineer integrateChanges.
	self archivist archiveCobweb.
	self journalist publishChangeReport