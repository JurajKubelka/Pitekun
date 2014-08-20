cobweb manipulation
addNodeFromModel: aPTKNode 
	| node |
	self journalist startChangeReport.
	node := self methodCatcher addModel: aPTKNode.
	self civilEngineer integrateChanges.
	self archivist archiveCobweb.
	self journalist publishChangeReport.
	^ node