accessing
numberOfHiddens
	^ (methods reject: [ :each | each visible ]) size