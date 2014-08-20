extension un/registering
removeFrom: anApplicant ifType: aClass 
	(self isKindOf: aClass) ifTrue: [ 
		self removeFrom: anApplicant ] 