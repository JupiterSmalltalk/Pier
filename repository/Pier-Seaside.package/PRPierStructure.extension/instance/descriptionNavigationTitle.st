*pier-seaside-descriptions
descriptionNavigationTitle
	<magritteDescription>
	^ MAStringDescription new
		comment: 'A short title used for navigation facilities.';
		label: 'Navigation Title';
		parameterName: 'menu';
		accessor: #menu;
		beSearchable;
		priority: 20;
		beSetting;
		yourself