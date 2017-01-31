accessing-descriptions
descriptionWebsite
	<magritteDescription>
	^ MAStringDescription new
		addCondition: (MACondition selector: #matches: argument: '#*.##*') labelled: 'Please make sure to enter a valid URL';
		comment: 'The URL to the blog or personal website of the author';
		propertyAt: #public put: true;
		accessor: #website;
		label: 'Website';
		priority: 340;
		beEditable;
		yourself