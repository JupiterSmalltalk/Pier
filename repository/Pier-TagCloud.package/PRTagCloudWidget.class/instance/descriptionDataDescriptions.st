accessing-description
descriptionDataDescriptions
	<magritteDescription>

	^ MAMultipleOptionDescription new
		optionsAndLabels: self optionsAndLabels associations;
		reference: MADescription basicNew initialize magritteDescription;
		accessor: #dataDescriptions;
		default: self optionsAndLabels keys;
		priority: 220;
		label: 'Data';
		beDistinct;
		yourself