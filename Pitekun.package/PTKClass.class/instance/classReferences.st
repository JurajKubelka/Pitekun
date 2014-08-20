model accessing
classReferences
	^ (self ptkMethods flatCollect: #classReferences) removeDuplicates