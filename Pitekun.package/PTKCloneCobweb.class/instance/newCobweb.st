cobweb manipulation
newCobweb
	^ self report newCobwebIfAbsentPut: [
		self cloneCobweb: self report oldCobweb ].