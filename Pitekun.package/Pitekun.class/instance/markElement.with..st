roassal2 actions
markElement: anElement with: aColor
	(anElement hasAttribute: #oldColor)
		ifTrue: [ anElement attributeAt: #oldColor put: aColor ].
	anElement trachelShape 
					color: aColor;
					signalUpdate.