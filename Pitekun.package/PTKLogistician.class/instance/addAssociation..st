cobweb manipulation
addAssociation: anAssociation 
	| node1 node2 edge |
	self journalist startChangeReport.
	node1 := self add: anAssociation key.
	node2 := self add: anAssociation value.
	edge := self edgeCatcher addEdgeFrom: node1 to: node2.
	self civilEngineer integrateChanges.
	self archivist archiveCobweb.
	self journalist publishChangeReport.
	^ edge