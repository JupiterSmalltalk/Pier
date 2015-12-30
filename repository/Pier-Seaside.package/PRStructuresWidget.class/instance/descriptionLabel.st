accessing-description
descriptionLabel
	<magritteDescription>
	^ MASingleOptionDescription new
		comment: 'The label to be used to name structures.';
		options: self class defaultLabels;
		default: self class defaultLabel;
		accessor: #label;
		label: 'Label';
		priority: 200;
		beRequired;
		beSorted;
		yourself