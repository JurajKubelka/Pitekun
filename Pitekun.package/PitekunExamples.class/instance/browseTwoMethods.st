examples
browseTwoMethods
	"
	self new browseTwoMethods
	"
	| ptk |
	ptk := Pitekun new.
	^ ptk 
		add:  PTKClassForTest2 >> #addInPTK;
		add: PTKClassForTest1 >> #addInPTK;
		open