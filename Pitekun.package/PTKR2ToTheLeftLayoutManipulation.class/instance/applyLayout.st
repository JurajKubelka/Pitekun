view manipulation
applyLayout
	self rootEdges 
			ifEmpty: [ RTGridLayout on: (self rootElements) ]
			ifNotEmpty: [ 
				RTVerticalLineLayout on: self report newElements.
				self report newEdges ifNotEmpty: [ :newEdges | 
					| sourceElement sourceRectangle targetRectangle newPosition |
					sourceElement := newEdges first from.
					sourceRectangle := sourceElement encompassingRectangle.
					targetRectangle := newEdges first to encompassingRectangle.
					newPosition := sourceRectangle rightCenter 
											+ ((targetRectangle width / 2 + 20) @ 0).
					self report newElements translateTo: newPosition ] ].