accessing
store
	^ store ifNil: [ store := PTKStore new ]