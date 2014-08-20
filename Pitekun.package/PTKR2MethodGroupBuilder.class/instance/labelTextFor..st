private - building
labelTextFor: anImplementors
	^ PTKText new
		text: anImplementors groupName, ' (+' , anImplementors numberOfVisibles printString , ',-'
				, anImplementors numberOfHiddens printString , ')'