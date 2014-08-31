as yet unclassified
addTransitionsOfClasses: aCollectionOfClassElements into: aView 
	RTEdge
		buildEdgesFromElements: aCollectionOfClassElements 
		from: [ :aClass | aClass ] 
		toAll: [ :aClass | aClass classReferences ] 
		inView: aView