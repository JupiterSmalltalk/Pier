accessing-descriptions
descriptionMaxItems
	<magritteDescription>
	^ MANumberDescription new
		comment: 'The maximum number of items to show.';
		parameterName: 'max-items';
		accessor: #maxItems;
		label: 'Max Items';
		priority: 200;
		default: 10;
		bePositive;
		beInteger;
		yourself