accessing-description
descriptionNumberOfPosts
	<magritteDescription>
	^ MANumberDescription new
		comment: 'The maximum number of posts to appear.';
		parameterName: 'number-of-posts';
		accessor: #numberOfPosts;
		label: 'Number of Posts';
		priority: 120;
		default: 3;
		bePositive;
		beInteger;
		yourself