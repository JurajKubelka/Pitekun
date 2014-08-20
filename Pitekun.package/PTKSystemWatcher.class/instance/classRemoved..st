system announcements
classRemoved: aClassRemoved 
	| className |
	className := aClassRemoved classRemoved originalName.
	(self isWatchedClassName: className)
		ifTrue: [ self applicants do: [ :eachApplicant | 
								eachApplicant classRemoved: aClassRemoved classRemoved ] ]