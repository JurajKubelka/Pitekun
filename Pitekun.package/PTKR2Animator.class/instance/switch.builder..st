actions
switch: aRTElement builder: aPTKR2Composition
	| newElement position |
	position := aRTElement position.
	aPTKR2Composition shift.
	newElement := aPTKR2Composition addElementOn: aRTElement model.
	newElement translateTo: position.
	aRTElement connectedEdges do: [ :eachEdge |
		(eachEdge to = aRTElement) ifTrue: [ eachEdge to: newElement. ].
		(eachEdge from = aRTElement) ifTrue: [ eachEdge from: newElement ].
		eachEdge update. ].
	(aRTElement hasAttribute: #nestedElements) 
		ifTrue: [ (aRTElement attributeAt: #nestedElements) do: [ :eachElement | eachElement remove ] ].
	aRTElement remove.
	newElement trachelShape signalUpdate.