accessing-editing
descriptionUrl
	<magritteDescription>
	^ MAStringDescription new
		label: 'Source URL';
		accessor: #url;
		priority: 200;
		beRequired;
		beEditable;
		yourself