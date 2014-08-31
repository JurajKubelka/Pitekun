Nautilus events
classSelected: aNautilusClassSelected 
	aNautilusClassSelected itemClass ifNil: [ ^ self ].
	PTKConferee current classSelected: aNautilusClassSelected itemClass.