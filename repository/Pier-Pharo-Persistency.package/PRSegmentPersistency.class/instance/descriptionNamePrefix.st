accessing-descriptions
descriptionNamePrefix
	<magritteDescription>
	^ MAStringDescription new
		comment: 'Defines the prefix for snapshot files.';
		label: 'Snapshot Prefix';
		accessor: #namePrefix;
		default: 'snapshot_';
		priority: 120;
		beRequired;
		yourself