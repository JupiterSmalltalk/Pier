accessing-description
descriptionViewClasses
	<magritteDescription>
	^ MAMultipleOptionDescription new
		default: self class defaultViewClasses;
		options: self class defaultViewClasses;
		componentClass: MAListCompositonComponent;
		reference: MAClassDescription new;
		accessor: #viewClasses;
		label: 'View Classes';
		priority: 200;
		beOrdered;
		beDistinct;
		beSorted;
		yourself