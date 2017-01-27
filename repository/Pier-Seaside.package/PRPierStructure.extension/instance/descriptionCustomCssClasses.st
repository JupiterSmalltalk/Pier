*pier-seaside-descriptions
descriptionCustomCssClasses
	<magritteDescription>
	^ MAStringDescription new
		comment: 'Custom CSS classes associated with this structure.';
		accessor: #customCssClasses;
		group: 'Layout Settings';
		label: 'CSS Classes';
		priority: 830;
		beSetting;
		yourself