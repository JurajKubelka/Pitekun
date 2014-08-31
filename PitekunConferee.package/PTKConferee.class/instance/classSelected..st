Nautilus events
classSelected: aClass
	(self classes includes: aClass) ifFalse: [ self classes add: aClass ]