specs
defaultSpec
	<spec: #default>
	^ SpecLayout composed 
			newColumn: [ :column | 
				column 
					add: #roassalModel origin: 0@0 corner: 1@0.75 offsetOrigin: 0@0 offsetCorner: 0@0;
					addSplitter;
					add: #textModel origin: 0@0.75 corner: 1@1 offsetOrigin: 0@0 offsetCorner: 0@0 ];
			yourself