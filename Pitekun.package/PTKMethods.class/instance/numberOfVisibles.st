accessing
numberOfVisibles
	^ (methods select: [ :each | each visible ]) size