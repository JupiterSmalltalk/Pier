accessing-descriptions
descriptionDefault
	<magritteDescription>
	^ PRDocumentWidgetDescription new
		parameterName: 'default';
		accessor: #default;
		stringAccessor: #contents;
		label: 'Default';
		priority: 120;
		yourself