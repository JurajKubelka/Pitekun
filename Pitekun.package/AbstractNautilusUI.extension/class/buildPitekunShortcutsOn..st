*Pitekun
buildPitekunShortcutsOn: aBuilder
	<keymap>

	(aBuilder shortcut: #ptkBrowseMethod)
		category: #NautilusGlobalShortcuts
		default: $b command , $p command 
		do: [:target | target ptkBrowseMethod ]
		description: 'Browse method in Pitekün'.