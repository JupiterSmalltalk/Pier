accessing-description
descriptionMaxItems
	<magritteDescription>
	^ MANumberDescription new
		comment: 'The maximum number of items to be displayed.';
		default: self class defaultMaxItems;
		parameterName: 'max-items';
		accessor: #maxItems;
		label: 'Max Items';
		priority: 230;
		beInteger;
		min: 1;
		yourself