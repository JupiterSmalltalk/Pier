accessing-description
descriptionCopyright
	<magritteDescription>
	^ MAStringDescription new
		accessor: #copyright;
		label: 'Copyright';
		priority: 350;
		comment: 'Copyright notice for content in the channel.';
		beEditable;
		yourself