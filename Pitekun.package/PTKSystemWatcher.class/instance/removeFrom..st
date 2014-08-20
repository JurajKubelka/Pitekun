extension un/registering
removeFrom: anApplicant 
	anApplicant removeExtensionFromList: self.
	self applicants remove: anApplicant.
	self applicants size = 0 ifTrue: [ self stop ].