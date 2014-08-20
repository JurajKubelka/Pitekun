accessing
store
	^ store ifNil: [ store := PTKR2Store new ]