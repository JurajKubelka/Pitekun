visualiation-elements
addClasses: aCollectionOfClasses into: aView highlight: aClass
	| newElements |
	newElements := RTGroup new: aCollectionOfClasses size.
	aCollectionOfClasses do: [ :eachClass | | element |
		element := self addClass: eachClass into: aView highlight: aClass.
		newElements add: element ].
	^ newElements