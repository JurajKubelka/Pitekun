Nautilus events
classSelected: aClass
	| classes classElements |
	self cleanView.
	classes := self conferee informationRelevantToClass: aClass.
	classElements := self addClasses: classes into: view highlight: aClass.
	"self addTransitionsOfClasses: classElements into: view."
	RTCircleLayout new on: classElements.
	self refreshView.