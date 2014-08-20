printing
printOn: aStream
	super printOn: aStream.
	aStream
		nextPutAll: '(-';
		print: self removedNodes size;
		nextPutAll: ', -';
		print: self removedEdges size;
		nextPutAll: ', +';
		print: self newNodes size;
		nextPutAll: ', +';
		print: self newEdges size;
		nextPutAll: ', ';
		print: self actions size;
		nextPut: $)