visualization
addPackagesInto: aView
	| displayedPackages newPackages newElements |
	displayedPackages := aView elements 
		select: [ :each | each model isKindOf: RPackage ]
		thenCollect: #model.
	newPackages := self conferee packagesExcept: displayedPackages.
	newElements := RTGroup new: newPackages size.
	newPackages do: [ :eachPackage | | element |
		element := self addPackage: eachPackage into: aView.
		newElements add: element ].
	^ newElements