model accessing
classReferences
	^ ((self allLiterals 
						select: [:l | l isKindOf: Association ]) 
						collect: #value) 
							copyWithout: self methodClass