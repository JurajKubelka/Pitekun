visitor
accept: methodSourceCodeText notifying: notifyer
	"Compile a new method"
	textModel behavior ifNotNil: [ :aClass |
		aClass compile: methodSourceCodeText "classified: '...'" notifying: notifyer ].