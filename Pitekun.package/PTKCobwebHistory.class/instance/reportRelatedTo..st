report accessing
reportRelatedTo: aReport
	^ self cobwebs detect: [ :eachReport |
		eachReport newCobweb = aReport oldCobweb ].