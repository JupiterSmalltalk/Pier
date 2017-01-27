accessing-descriptions
descriptionShowNumbers
	<magritteDescription>
	^ MABooleanDescription new
		parameterName: 'show-numbers';
		checkboxLabel: 'Numbers';
		accessor: #showNumbers;
		default: true;
		priority: 230;
		yourself