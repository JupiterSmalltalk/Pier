accessing-descriptions
descriptionSourceUrl
	<magritteDescription>
	^ MAStringDescription new
		accessor: #sourceUrl;
		comment: 'The URL of the RSS channel the item came from.';
		label: 'Source URL';
		priority: 340;
		beEditable;
		yourself