accessing
interaction
	^ interaction ifNil: [ interaction := RTInteractionBuilder new ]