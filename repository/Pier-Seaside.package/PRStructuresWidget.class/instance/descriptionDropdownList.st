accessing-description
descriptionDropdownList
	<magritteDescription>
	^ MABooleanDescription new
		comment: 'Displays the structures as a dropdown list';
		default: self class defaultDropdownList;
		parameterName: 'dropdown-list';
		accessor: #dropdownList;
		label: 'Dropdown List';
		priority: 270;
		yourself