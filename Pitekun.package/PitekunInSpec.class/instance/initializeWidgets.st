initialization
initializeWidgets
	roassalModel := self instantiate: RoassalModel.
	textModel := self newText.
	self focusOrder
		add: roassalModel;
		add: textModel.
	textModel aboutToStyle: true.
	roassalModel script: [ :aView |
		self pitekun 
			view: aView;
			initializeMenu ].
	textModel acceptBlock: [ :text :notifyer | self accept: text notifying: notifyer ].