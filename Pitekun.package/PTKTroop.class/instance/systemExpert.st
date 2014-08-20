accessing
systemExpert
	^ systemExpert ifNil: [ systemExpert := PTKSystemExpert new logistician: logistician ]