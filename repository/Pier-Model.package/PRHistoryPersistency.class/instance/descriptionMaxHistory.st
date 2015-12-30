accessing-descriptions
descriptionMaxHistory
	<magritteDescription>
	^ MANumberDescription new
		comment: 'The maximum number of history items to keep.';
		accessor: #maxHistory;
		label: 'Max History';
		default: 1024;
		priority: 100;
		beInteger;
		yourself