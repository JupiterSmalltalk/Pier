descriptions
descriptionDuration
	<magritteDescription>
	^ MADurationDescription new
		comment: 'The minimum interval between two snapshots.';
		accessor: #duration;
		label: 'Duration';
		default: 1 hour;
		priority: 100;
		beRequired;
		yourself