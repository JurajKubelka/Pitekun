graph accessing
elementsFromModels: aCollectionOfNodes.
	^ aCollectionOfNodes collect: [ :each | self view elementFromModel: each ]