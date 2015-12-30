accessing-description
descriptionTags
	<magritteDescription>
	^ MATokenDescription new
		parameterName: 'tags';
		accessor: #tags;
		beSearchable;
		label: 'Tags';
		priority: 30;
		yourself