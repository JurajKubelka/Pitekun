converting
asArray
	^ Array
		with: 'nodes:' -> (self nodes collect: #asArray as: Array)
		with: 'edges:' -> (self edges collect: #asArray as: Array)