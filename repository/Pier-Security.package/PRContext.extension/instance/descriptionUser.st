*pier-security
descriptionUser
	<magritteDescription>
	^ MASingleOptionDescription new
		accessor: (MASelectorAccessor read: #user write: #setUser:);
		reference: PUUser new magritteDescription;
		parameterName: 'user';
		priority: 500;
		label: 'User';
		yourself