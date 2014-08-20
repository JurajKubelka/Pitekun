converting
asArray
	| newArray |
	newArray := super asArray.
	newArray doWithIndex: [ :eachChain :index | newArray at: index put: eachChain asArray ].
	^ newArray