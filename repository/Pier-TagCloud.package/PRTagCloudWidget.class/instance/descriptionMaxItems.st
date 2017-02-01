accessing-description
descriptionMaxItems
	<magritteDescription>
	^ MANumberDescription new
		accessor: #maxItems;
		label: 'Max Items';
		priority: 220;
		default: 50;
		beInteger;
		min: 1;
		yourself