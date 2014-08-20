cobweb manipulation
addSendersOf: aMethod
	| senders |
	self journalist startChangeReport.
	senders := self methodCatcher addSendersOf: aMethod.
	self strategist addSendersOf: aMethod.
	self edgeCatcher addEdgeFrom: senders to: aMethod.
	self civilEngineer integrateChanges.
	self archivist archiveCobweb.
	self journalist publishChangeReport.