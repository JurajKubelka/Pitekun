public
addSmallestElementOn: aPTKMethod 
	| element |
	element := self lastBuilder addElementOn: aPTKMethod.
	self interaction setUpElements: element.
	^ element