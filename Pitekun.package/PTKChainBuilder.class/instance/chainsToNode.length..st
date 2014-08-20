report accessing
chainsToNode: aNode length: anInteger
	chains := PTKChains new.
	self chainsToNode: aNode length: anInteger chain: PTKChain new.
	^ chains