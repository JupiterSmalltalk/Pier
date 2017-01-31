accessing-descriptions
descriptionSourceTitle
	<magritteDescription>
	^ MAStringDescription new
		accessor: #sourceTitle;
		comment: 'The title of the RSS channel the item came from.';
		label: 'Source Title';
		priority: 330;
		beEditable;
		yourself