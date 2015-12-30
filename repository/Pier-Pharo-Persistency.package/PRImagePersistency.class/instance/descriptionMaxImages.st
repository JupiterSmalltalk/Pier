accessing-descriptions
descriptionMaxImages
	<magritteDescription>
	^ MANumberDescription new
		comment: 'The maximum number of backup copies to keep';
		accessor: #maxImages;
		label: 'Backup Images';
		priority: 110;
		beRequired;
		default: 3;
		beInteger;
		yourself