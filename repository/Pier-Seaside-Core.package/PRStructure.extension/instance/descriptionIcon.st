*pier-seaside-core-descriptions
descriptionIcon
	<magritteDescription>
	^ PRStructureDescription new
		accessor: #localIcon;
		addCondition: (MACondition selector: #isFile) & (MACondition selector: #isImage) labelled: 'Invalid icon';
		group: 'Layout Settings';
		label: 'Shortcut Icon';
		priority: 820;
		beSetting;
		yourself