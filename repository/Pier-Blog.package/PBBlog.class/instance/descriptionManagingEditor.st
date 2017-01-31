accessing-description
descriptionManagingEditor
	<magritteDescription>
	^ MAStringDescription new
		accessor: #managingEditor;
		label: 'Managing Editor';
		priority: 330;
		comment: 'Email address for person responsible for editorial content.';
		beEditable;
		yourself