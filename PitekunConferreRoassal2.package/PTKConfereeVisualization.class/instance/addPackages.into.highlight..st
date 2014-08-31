visualiation-elements
addPackages: aCollectionOfPackages into: aView highlight: aPackage
	|  newElements |
	newElements := RTGroup new: aCollectionOfPackages size.
	aCollectionOfPackages do: [ :eachPackage | | element |
		element := self addPackage: eachPackage into: aView highlight: aPackage.
		newElements add: element ].
	^ newElements