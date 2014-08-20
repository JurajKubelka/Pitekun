converting
asArray
	| newArray |
	newArray := super asArray.
	newArray doWithIndex: [ :eachPTKNode :index |
		newArray at: index put: eachPTKNode asArray ].
	^ newArray