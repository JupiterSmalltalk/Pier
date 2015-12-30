*pier-seaside-descriptions
descriptionHideFromMenus
	<magritteDescription>
	^ MABooleanDescription new
		comment: 'Hides this structure from navigation facilities.';
		checkboxLabel: 'Hide from menus';
		accessor: #hideFromMenus;
		label: 'Visibility';
		priority: 10;
		beSetting;
		yourself