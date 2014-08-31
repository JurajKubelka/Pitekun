Nautilus events
packageSelected: aRPackage 
	| packages packageElements |
	self cleanView.
	packages := self conferee informationRelevantToPackages: aRPackage.
	packageElements := self addPackages: packages into: view highlight: aRPackage.
	RTCircleLayout new on: packageElements.
	self refreshView.