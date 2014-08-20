double dispatching
processSmallestAction: aPTKSmallest 
	| node toEdges fromEdges oldElement newElement |
	node := aPTKSmallest item.
	oldElement := self elementFromModel: node.
	toEdges := self edgesTo: oldElement.
	fromEdges := self edgesFrom: oldElement.
	newElement := aPTKSmallest uiAttributes builder addSmallestElementOn: node.
	toEdges do: [ :eachEdge | eachEdge to: newElement ].
	fromEdges do: [ :eachEdge | eachEdge from: newElement ].
	self removeElement: oldElement.
	self report addedElement: newElement.