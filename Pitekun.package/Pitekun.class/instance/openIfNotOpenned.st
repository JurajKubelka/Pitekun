instance creation
openIfNotOpenned
	^ (window notNil and: [ window isDisplayed ])
		ifFalse: [ window := self open ]
		ifTrue: [ window window restoreAndActivate. window ]