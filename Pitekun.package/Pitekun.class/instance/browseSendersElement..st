roassal2 actions
browseSendersElement: aRTElement
	| aMethod |
	self markElement: aRTElement with: Color red.
	aMethod := aRTElement model rootNode.
	spider addSendersOf: aMethod.