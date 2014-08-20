converting
asArray
	| array |
	array := Array new: self cobwebs size.
	self cobwebs withIndexDo: [ :eachCobweb :index |
		array at: index put: ('protocol', index asString, ':') -> eachCobweb asArray ].
	^ array