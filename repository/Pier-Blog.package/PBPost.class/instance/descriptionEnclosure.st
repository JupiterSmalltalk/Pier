accessing-descriptions
descriptionEnclosure
	<magritteDescription>
	^ PRStructureDescription new
		addCondition: (MACondition selector: #isFile) labelled: 'Enclosure must be a file';
		comment: 'A media object that is attached to the item.';
		accessor: #enclosure;
		label: 'Enclosure';
		priority: 350;
		beEditable;
		yourself