system announcements
methodAdded: aMethodAdded
	| className |
	className := aMethodAdded methodClass name.
	(self isWatchedClassName: className)
		ifTrue: [ self applicants do: [ :eachApplicant | 
								eachApplicant 
									method: aMethodAdded method
									addedToClass: aMethodAdded methodClass ] ]