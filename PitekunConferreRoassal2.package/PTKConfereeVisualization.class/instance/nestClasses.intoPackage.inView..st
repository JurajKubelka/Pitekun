visualization
nestClasses: aCollectionOfClassElements intoPackage: aRPackage inView: aView 
	| packageElement |
	packageElement := aView elementFromModel: aRPackage.
	RTNest new
		layout: RTGridLayout new;
		on: packageElement inShape: #second nest: aCollectionOfClassElements.
	