nodes accessing
nodeThat: oneArgBlock 
	^ self nodes detect: oneArgBlock ifNone: [ nil ]