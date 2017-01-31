accessing-description
descriptionCommentTimeout
	<magritteDescription>
	^ MADurationDescription new
		accessor: #commentTimeout;
		label: 'Comment Timeout';
		priority: 370;
		comment: 'How long should it be possible to post comments.';
		beRequired;
		beEditable;
		yourself