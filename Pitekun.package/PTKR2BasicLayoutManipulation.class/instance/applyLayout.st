view manipulation
applyLayout
	self rootEdges 
			ifEmpty: [ RTGridLayout on: (self rootElements) ]
			ifNotEmpty: [ RTHorizontalTreeLayout 
								on: self rootElements 
								edges: self rootEdges ].