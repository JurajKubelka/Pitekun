ui update
changeView: aView 
	self view: aView.
	self configurations do: [ :eachBuilder |
		eachBuilder view: aView ]