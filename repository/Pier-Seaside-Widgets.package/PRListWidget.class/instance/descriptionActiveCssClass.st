accessing-description
descriptionActiveCssClass
	<magritteDescription>
	^ MAStringDescription new
		comment: 'The css class that is added to the items in the list when the item is active.';
		accessor: #activeClass;
		label: 'Active class';
		priority: 140;
		default: '';
		yourself