visualization
cleanView
	view ifNotNil: [ :aView | 
			aView elements do: #remove.
			aView edges do: #remove. ] 