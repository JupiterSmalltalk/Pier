accessing-settings
descriptionWidth
	<magritteDescription>
	^ MANumberDescription new
		propertyAt: #urlparam put: 'w';
		group: 'Widget Preferences';
		accessor: #width;
		priority: 2000;
		label: 'Width';
		default: 320;
		beSetting;
		yourself