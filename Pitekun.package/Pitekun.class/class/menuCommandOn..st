menu
menuCommandOn: aBuilder
	<worldMenu>

	(aBuilder item: #'Pitekün')
		order: 0.01; 
		parent: #Tools;
		label: 'Pitekün Browser';
		action:[ self lastInstance openIfNotOpenned ]