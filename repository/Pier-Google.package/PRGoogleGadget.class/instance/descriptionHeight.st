accessing-settings
descriptionHeight
	<magritteDescription>
	^ MANumberDescription new
		propertyAt: #urlparam put: 'h';
		group: 'Widget Preferences';
		accessor: #height;
		label: 'Height';
		priority: 2010;
		default: 75;
		beSetting;
		yourself