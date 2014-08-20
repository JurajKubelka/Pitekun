roassal2 accessing
view: aView 
	ui view: aView.
	self extensions do: [ :eachExtension | eachExtension changeView: aView ]