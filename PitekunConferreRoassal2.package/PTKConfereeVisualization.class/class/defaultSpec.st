specs
defaultSpec
	<spec: #default>
	^ SpecLayout composed
		newColumn: [ :column |
			column newRow: [ :row |
				row add: #graphModel ] ]