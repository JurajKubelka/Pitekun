visualization
nestClasses: aCollectionOfClassElements inView: aView 
	| packages |
	packages := (aCollectionOfClassElements collect: [ :eachElement | eachElement model package ]) removeDuplicates.
	packages do: [ :eachPackage | | classesRelatedToPackage |
		classesRelatedToPackage := aCollectionOfClassElements select: [ :eachElement | eachElement model package = eachPackage ].
		self nestClasses: classesRelatedToPackage intoPackage: eachPackage inView: aView ].