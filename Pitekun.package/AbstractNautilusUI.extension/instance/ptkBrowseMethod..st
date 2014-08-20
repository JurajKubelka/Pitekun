*Pitekun
ptkBrowseMethod: aCompiledMethod 
	| browser |
	browser := Pitekun lastInstance. 
	browser addCompiledMethod: aCompiledMethod.
	^ browser openIfNotOpenned.