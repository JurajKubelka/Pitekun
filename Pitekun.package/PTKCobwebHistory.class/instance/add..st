manipulation
add: aReport 
	| previousReport |
	previousReport := self cobwebs detect: [ :eachReport |
		eachReport newCobweb = aReport oldCobweb ].
	self cobwebs last = previousReport 
		ifFalse: [ cobwebs := self cobwebs copyUpThrough: previousReport ].
	self cobwebs add: aReport
