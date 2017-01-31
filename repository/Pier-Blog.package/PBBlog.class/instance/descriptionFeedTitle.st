accessing-description
descriptionFeedTitle
	<magritteDescription>
	^ MAStringDescription new
		accessor: #feedTitle;
		label: 'Feed Title';
		priority: 310;
		comment: 'The title of the channel.';
		beEditable;
		yourself