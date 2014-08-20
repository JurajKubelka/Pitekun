accessing
space
	^ self called: #space initialize: [ :aBuilder | self initializeSpaceBuilder: aBuilder ]