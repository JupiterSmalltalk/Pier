accessing-description
descriptionWebMaster
	<magritteDescription>
	^ MAStringDescription new
		accessor: #webMaster;
		label: 'Web Master';
		priority: 340;
		comment: 'Email address for person responsible for technical issues relating to channel.';
		beEditable;
		yourself