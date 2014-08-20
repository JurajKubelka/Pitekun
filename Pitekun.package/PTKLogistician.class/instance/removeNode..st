cobweb manipulation
removeNode: aNode
	self journalist startChangeReport.
	self nodeDustman removeNode: aNode.
	self edgeDustman removeEdgesFor: aNode.
	self civilEngineer integrateChanges.
	self archivist archiveCobweb.
	self journalist publishChangeReport.