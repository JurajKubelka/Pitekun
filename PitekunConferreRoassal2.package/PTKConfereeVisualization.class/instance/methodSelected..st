Nautilus events
methodSelected: aCompiledMethod 
	| packages packageElements |
	self cleanView.
	packages := self conferee informationRelevantToMethod: aCompiledMethod.
	packageElements := self addMethods: packages into: view highlight: aCompiledMethod.
	RTCircleLayout new on: packageElements.
	self refreshView.