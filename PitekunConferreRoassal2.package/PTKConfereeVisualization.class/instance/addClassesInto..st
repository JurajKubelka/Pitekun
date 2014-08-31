visualization
addClassesInto: aView 
	| displayedClasses newClasses newElements |
	displayedClasses := aView elements 
		select: [ :each | each model isClass ]
		thenCollect: #model.
	newClasses := self conferee classesExcept: displayedClasses.
	newElements := RTGroup new: newClasses size.
	newClasses do: [ :eachClass | | element |
		element := self addClass: eachClass into: aView.
		newElements add: element ].
	^ newElements