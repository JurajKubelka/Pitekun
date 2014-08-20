removing
removeClass: aClass
	| element |
	element := view elementFromModel: aClass.
	element remove.
	currentSelection remove: element ifAbsent: [ ]