accessing-descriptions
descriptionNamePrefix
	<magritteDescription>
	^ MAStringDescription new
		comment: 'Defines the prefix for image-names.';
		default: 'pier_backup_';
		accessor: #namePrefix;
		label: 'Backup Prefix';
		priority: 120;
		beRequired;
		yourself