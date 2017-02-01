accessing-description
descriptionGoogleUACCT
	<magritteDescription>
	^ MAStringDescription new
		comment: 'The string Google Analytics provided you with (e.g. UA-XXXXXXX-Y)';
		parameterName: 'uacct';
		accessor: #uacct;
		label: 'uacct';
		priority: 200;
		beSetting;
		yourself