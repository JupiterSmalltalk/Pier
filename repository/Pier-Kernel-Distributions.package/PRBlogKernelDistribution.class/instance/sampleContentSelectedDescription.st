magritte description
sampleContentSelectedDescription
	<magritteDescription>
	^ MABooleanDescription new
		checkboxLabel: 'add sample content';
		accessor: #sampleContentSelected;
		componentClass: TWBSMagritteCheckboxComponent;
		priority: 600;
		yourself