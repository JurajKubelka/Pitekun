mock support
createNewMethod
	newSelector := newClass compile: 'foo ^ 10'.
	newMethod := newClass lookupSelector: newSelector.