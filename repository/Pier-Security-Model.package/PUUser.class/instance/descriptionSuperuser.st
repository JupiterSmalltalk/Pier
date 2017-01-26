accessing-description
descriptionSuperuser
	<magritteDescription>
	^ MABooleanDescription new
		comment: 'Superusers have unrestricted rights, they can also edit users and groups.';
		propertyAt: #report put: true;
		accessor: #superuser;
		label: 'Superuser';
		priority: 400;
		yourself