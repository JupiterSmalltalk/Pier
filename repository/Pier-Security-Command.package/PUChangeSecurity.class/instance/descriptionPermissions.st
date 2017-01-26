accessing-description
descriptionPermissions
	<magritteDescription>
	^ MAMultipleOptionDescription new
		comment: 'Defines the set of permissions used together with the selected operation.';
		options: self class permissionInstances;
		reference: PUPermission new magritteDescription;
		parameterName: 'permissions';
		accessor: #permissions;
		label: 'Permissions';
		priority: 310;
		beSorted;
		yourself