tests-event handling
testMethodAddedToClass
	| newClassElement numberOfElements newMethodElement |
	self createNewClass.
	self installSystemWatcher.
	newClassElement := browser view elementFromModel: newClass.
	self assert: newClassElement notNil.
	numberOfElements := browser view elements size.
	self deny: (browser isElementExpanded: newClassElement).
	newClassElement testCaseAnnounce: TRMouseClick.
	self assert: (browser isElementExpanded: newClassElement).
	self assert: browser view elements size equals: numberOfElements.
	"create method"	
	self createNewMethod.
	self assert: browser view elements size equals: numberOfElements + 1.
	newMethodElement := browser view elementFromModel: newMethod.
	self assert: newMethodElement notNil.