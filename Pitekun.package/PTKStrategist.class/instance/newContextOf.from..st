instance creation
newContextOf: aSymbol from: aNode
	^ PTKFilterContext new message: aSymbol; sourceNode: aNode; boss: self; yourself