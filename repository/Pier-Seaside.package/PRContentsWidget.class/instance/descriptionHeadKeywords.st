descriptions
descriptionHeadKeywords
	<magritteDescription>
	^ MAStringDescription new
		comment: 'The keywords to appear in the html head.';
		accessor: #headKeywords;
		label: 'Head Keywords';
		default: '%k %t';
		priority: 210;
		beSetting;
		yourself