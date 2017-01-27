*pier-seaside-descriptions
descriptionEnvironment
	<magritteDescription>
	^ PRStructureDescription new
		accessor: #localEnvironment;
		addCondition: (MACondition selector: #hasDocument) labelled: 'The template has to have a document';
		addCondition: (MACondition selector: #hasContentsWidget)
			labelled: 'Invalid template, make sure to embed the contents widget';
		group: 'Layout Settings';
		label: 'Template';
		priority: 800;
		beSetting;
		yourself