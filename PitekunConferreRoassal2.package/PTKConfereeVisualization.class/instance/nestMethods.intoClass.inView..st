visualization
nestMethods: aCollectionOfMethodElements intoClass: aClass inView: aView 
	| classElement |
	classElement := aView elementFromModel: aClass.
	RTNest new
		layout: RTGridLayout new;
		on: classElement inShape: #second nest: aCollectionOfMethodElements.
	