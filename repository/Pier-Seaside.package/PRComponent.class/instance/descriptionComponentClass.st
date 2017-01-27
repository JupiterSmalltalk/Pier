magritte-description
descriptionComponentClass
	<magritteDescription>
	^ MASingleOptionDescription new
		options: self componentClasses;
		reference: MAClassDescription new;
		accessor: #componentClass;
		label: 'Component Class';
		groupBy: #groupLabel;
		priority: 200;
		beRequired;
		beEditable;
		yourself