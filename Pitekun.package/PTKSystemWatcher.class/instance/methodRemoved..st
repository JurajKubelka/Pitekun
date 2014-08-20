system announcements
methodRemoved: aMethodRemoved
	| className |
	className := aMethodRemoved methodClass name.
	(self isWatchedClassName: className)
		ifTrue: [ self applicants do: [ :eachApplicant | 
								eachApplicant 
									method: aMethodRemoved methodRemoved
									removedFromClass: aMethodRemoved methodClass ] ]