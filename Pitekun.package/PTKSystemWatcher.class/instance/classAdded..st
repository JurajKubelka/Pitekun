system announcements
classAdded: aClassAdded
	| className |
	className := aClassAdded classAdded name.
	(self isWatchedClassName: className)
		ifTrue: [ self applicants do: [ :eachApplicant | 
								eachApplicant classAdded: aClassAdded classAdded ] ]