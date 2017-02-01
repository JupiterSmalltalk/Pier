accessing-description
descriptionOnlyViews
	<magritteDescription>
	^ MABooleanDescription new
		comment: 'Only include the widget in views';
		parameterName: 'only-views';
		checkboxLabel: 'Views';
		accessor: #onlyViews;
		label: 'Display';
		default: true;
		priority: 210;
		beSetting;
		yourself