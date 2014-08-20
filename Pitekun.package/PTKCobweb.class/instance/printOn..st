printing
printOn: aStream
	super printOn: aStream.
	aStream
		nextPut: $(;
		print: self nodes size;
		nextPutAll: ' nodes, ';
		print: self edges size;
		nextPutAll: ' edges)'