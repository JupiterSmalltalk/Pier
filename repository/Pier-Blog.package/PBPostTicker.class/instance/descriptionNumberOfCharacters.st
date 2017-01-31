accessing-description
descriptionNumberOfCharacters
	<magritteDescription>
	^ MANumberDescription new
		comment: 'The maximum number of characters to display of a post.';
		parameterName: 'number-of-characters';
		accessor: #numberOfCharacters;
		label: 'Number of Characters';
		priority: 110;
		default: 200;
		bePositive;
		beInteger;
		yourself