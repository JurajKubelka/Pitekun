setup spider
setupSpider: aSpider target: aPitekun
	aSpider 
		whenCobwebChangedDo: [ :event | aPitekun cobwebChangedEvent: event ];
		whenHistoricalPassageDo: [ :event | aPitekun historicalPassageEvent: event ].
	aPitekun + PTKCompactImplementors