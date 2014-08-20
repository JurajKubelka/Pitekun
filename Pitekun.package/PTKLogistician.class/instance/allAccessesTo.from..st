cobweb manipulation
allAccessesTo: aRBVariableNode from: aPTKMethod 
	"Later we can reuse receiver name (self, instance variable, class name)."
	| variable |
	self assert: [ aRBVariableNode isKindOf: RBVariableNode ].
	self journalist startChangeReport.
	variable := self methodCatcher allAccessesTo: aRBVariableNode from: aPTKMethod.
	self strategist adjustAllAccessesTo: aRBVariableNode from: aPTKMethod.
	self edgeCatcher addEdgeFrom: aPTKMethod to: variable.
	self civilEngineer integrateChanges.
	self archivist archiveCobweb.
	self journalist publishChangeReport.
	^ variable