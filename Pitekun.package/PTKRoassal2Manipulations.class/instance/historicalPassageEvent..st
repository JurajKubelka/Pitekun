view manipulation
historicalPassageEvent: aPTKHistoricalPassage
	| result |
	self journalist startChangeReport: aPTKHistoricalPassage report.
	result := self maintenance introduceChanges.
	self journalist updateElementAndEdgeList.
	self journalist publishChangeReport.
	^ result