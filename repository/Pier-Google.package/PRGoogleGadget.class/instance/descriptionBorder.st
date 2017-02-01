accessing-settings
descriptionBorder
	<magritteDescription>
	^ MAStringDescription new
		default: '#ffffff|3px,1px solid #999999';
		propertyAt: #urlparam put: 'border';
		group: 'Widget Preferences';
		accessor: #border;
		label: 'Border';
		priority: 2020;
		beSetting;
		yourself