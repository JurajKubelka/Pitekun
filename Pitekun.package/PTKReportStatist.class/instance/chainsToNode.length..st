queries
chainsToNode: aNode length: anInteger
	^ PTKChainBuilder new
		report: self report;
		chainsToNode: aNode length: anInteger;
		yourself