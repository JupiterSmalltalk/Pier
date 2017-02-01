accessing-descriptions
descriptionTimeout
	<magritteDescription>
	^ MADurationDescription new
		default: 10 minutes;
		accessor: #timeout;
		label: 'Timeout';
		priority: 120;
		beRequired;
		yourself