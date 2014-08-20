installing
installOn: aPitekun
	targets ifNil: [ ^ self ].
	targets do: [ :eachTarget |
		eachTarget
			installOn: aPitekun;
			interaction: self decoration ]