cobweb manipulation
addCompiledMethod: aCompiledMethod 
	| node |
	self journalist startChangeReport.
	node := self methodCatcher addModel: aCompiledMethod.
	self edgeCatcher addEdges.
	self civilEngineer integrateChanges.
	self archivist archiveCobweb.
	self journalist publishChangeReport.
	^ node