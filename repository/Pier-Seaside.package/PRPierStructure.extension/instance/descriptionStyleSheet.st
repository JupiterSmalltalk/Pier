*pier-seaside-descriptions
descriptionStyleSheet
	<magritteDescription>
	^ PRStructureDescription new
		addCondition: (MACondition selector: #isFile) & (MACondition selector: #isText) labelled: 'Invalid style sheet';
		accessor: #localStyleSheet;
		group: 'Layout Settings';
		label: 'Style Sheet';
		priority: 810;
		beSetting;
		yourself