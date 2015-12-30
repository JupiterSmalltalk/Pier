accessing-description
descriptionListCssClass
	<magritteDescription>
	^ MAStringDescription new
		comment: 'The css class that is set to the unordered list.';
		accessor: #listClass;
		label: 'List class';
		priority: 100;
		default: '';
		yourself