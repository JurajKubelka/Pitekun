running
setUp
	super setUp.
	self resetTrigger.
	spider := PTKSpider new.
	spider itemConfiguration: PTKNullItemConfiguration new.
	spider when: PTKChangeReportAnnouncement do: [ :event | trigger add: event changes ].
	initializedHistory :=  { 'oldCobweb:' -> nil. 
									'newCobweb:' -> { 'nodes:' -> {}. 'edges:' -> {} }.
									'changes:' -> { {"removed nodes"}. {"removed edges"}. 
													{"new nodes"}. {"new edges"}. {"actions"} } }.