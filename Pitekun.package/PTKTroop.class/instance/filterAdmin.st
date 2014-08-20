accessing
filterAdmin
	^ filterAdmin ifNil: [ filterAdmin := PTKFilterAdmin new logistician: logistician ]