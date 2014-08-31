visualization
nestMethods: aCollectionOfElements inView: aView 
	| methodClasses |
	methodClasses := (aCollectionOfElements collect: [ :eachElement | eachElement model methodClass  ]) removeDuplicates.
	methodClasses do: [ :eachClass | | methodElementsRelatedToClass |
		methodElementsRelatedToClass := aCollectionOfElements select: [ :eachElement | eachElement model methodClass = eachClass ].
		self nestMethods: methodElementsRelatedToClass intoClass: eachClass inView: aView ].