tests-event handling
testMethodRemovedFromClass
	| newClassElement newMethodElement |
	self createNewClass.
	self createNewMethod.
	self installSystemWatcher.
	newClassElement := browser view elementFromModel: newClass.
	newClassElement testCaseAnnounce: TRMouseClick.
	self assert: (browser isElementExpanded: newClassElement).
	"remove method"	
	self removeNewMethod.
	newMethodElement := browser view elementFromModel: newMethod.
	self assert: newMethodElement isNil.