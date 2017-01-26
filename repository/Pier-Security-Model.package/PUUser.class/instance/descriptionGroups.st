accessing-description
descriptionGroups
	<magritteDescription>
	| defaultGroups |
	defaultGroups := self defaultGroups.
	
	^ MAMultipleOptionDescription new
		addCondition: (MACondition selector: #notEmpty) labelled: 'A user has to belong to at least one group';
		options: self defaultGroups;
		componentClass: MAListCompositonComponent;
		reference:
				(defaultGroups anyOne descriptionContainer
						add: defaultGroups anyOne descriptionName;
						yourself);
		propertyAt: #report put: true;
		accessor: #groups;
		label: 'Groups';
		priority: 300;
		beDistinct;
		beOrdered;
		yourself