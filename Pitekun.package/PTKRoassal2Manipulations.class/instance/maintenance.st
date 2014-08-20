external operations
maintenance
	^ maintenance ifNil: [ maintenance := PTKR2Maintenance new logistician: self ]