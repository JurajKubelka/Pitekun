Nautilus events
protocolSelected: aNautilusProtocolSelected 
	"aNautilusProtocolSelected category is a String, e.g. 'tests'"
	aNautilusProtocolSelected category ifNil: [ ^ self ].