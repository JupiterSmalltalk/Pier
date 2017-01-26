descriptions
descriptionHeadAuthor
	<magritteDescription>
	^ MAStringDescription new
		comment: 'The author to appear in the html head.';
		accessor: #headAuthor;
		label: 'Head Author';
		priority: 220;
		beSetting;
		yourself