graph accessing
edgesFromModels: aCollectionOfEdges.
	^ aCollectionOfEdges collect: [ :each | self view edgeFromModel: each ]