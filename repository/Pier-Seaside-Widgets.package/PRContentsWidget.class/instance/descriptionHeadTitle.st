descriptions
descriptionHeadTitle
	<magritteDescription>
	^ MAStringDescription new
		comment: 'The title to appear in the browser window.';
		accessor: #headTitle;
		label: 'Head Title';
		default: '%k: %t';
		priority: 200;
		beSetting;
		yourself