accessing-description
descriptionItemCssClass
	<magritteDescription>
	^ MAStringDescription new
		comment: 'The css class that is set to the items in the list.';
		accessor: #itemClass;
		label: 'Item class';
		priority: 120;
		default: '';
		yourself