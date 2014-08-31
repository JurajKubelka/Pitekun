accessing
informationRelevantToClass: aClass
	| result |
	result := OrderedCollection new.
	(self classes includes: aClass) ifFalse: [ ^ result ].
	^ (aClass classReferences intersection: self classes) add: aClass; yourself