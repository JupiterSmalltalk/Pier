accessing-description
descriptionLanguage
	<magritteDescription>
	^ MASingleOptionDescription new
		accessor: #language;
		label: 'Language';
		priority: 360;
		comment: 'The language the channel is written in.';
		reference:
				(MAStringDescription new
						stringWriter: self;
						yourself);
		options: self class languages keys;
		default: 'en';
		beRequired;
		beEditable;
		beSorted;
		yourself