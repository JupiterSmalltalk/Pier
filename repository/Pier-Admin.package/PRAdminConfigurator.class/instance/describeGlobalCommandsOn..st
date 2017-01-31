description
describeGlobalCommandsOn: configuration
	(configuration collection: #pierAdminCommands)
		group: #pierAdmin;
		label: 'Global commands';
		comment: 'Pier commands to display in the administration interface';
		options: [ self commandClasses ];
		default: self filteredCommandClasses.