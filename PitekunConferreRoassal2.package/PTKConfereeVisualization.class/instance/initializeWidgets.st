initialization
initializeWidgets
	graphModel := self instantiate: RoassalModel.
	graphModel script: [ :view :canvas | self buildOnView: view andCanvas: canvas ].