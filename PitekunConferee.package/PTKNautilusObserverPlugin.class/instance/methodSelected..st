Nautilus events
methodSelected: aNautilusMethodSelected 
	"aNautilusMethodSelected method is CompiledMethod or nil"
	aNautilusMethodSelected method ifNil: [ ^ self ].
	PTKConferee current methodSelected: aNautilusMethodSelected method.