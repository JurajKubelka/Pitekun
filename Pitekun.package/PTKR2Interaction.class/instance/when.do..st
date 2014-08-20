events registering
when: anAnnouncementClass do: aBlockClosure 
	self interactionBuilders do: [ :eachBuilder |
		eachBuilder when: anAnnouncementClass do: aBlockClosure ]