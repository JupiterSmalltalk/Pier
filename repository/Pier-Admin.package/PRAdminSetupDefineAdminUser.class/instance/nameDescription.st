magritte descriptions
nameDescription
	<magritteDescription>
	^ MAStringDescription new
		accessor: (MASelectorAccessor read: #getName write: #name:);
		label: 'Name';
		priority: 100;
		componentClass: TWBSMagritteTextInputComponent; "is required for placeholder text below"
		placeholder: 'admin user name';
		beRequired;
		yourself