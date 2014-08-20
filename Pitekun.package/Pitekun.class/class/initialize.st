class initialization
initialize
	super initialize.
	"This is requested because of an error in Roassal 2 
	which does not resume opened window when image is openning."
	Smalltalk addToStartUpList: self