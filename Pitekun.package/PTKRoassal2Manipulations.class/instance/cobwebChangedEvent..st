view manipulation
cobwebChangedEvent: aPTKCobwebChanged 
	| result |
	self journalist startChangeReport: aPTKCobwebChanged report.
	result := self maintenance introduceChanges.
	self journalist updateElementAndEdgeList.
	self layoutMan applyLayout.
	self journalist publishChangeReport.
	^ result