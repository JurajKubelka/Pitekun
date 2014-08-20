nodes accessing
nodeFromModel: anObject 
	^ self nodes detect: [ :each | each model = anObject ] ifNone: [ nil ]