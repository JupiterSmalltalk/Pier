accessing-description
descriptionItemCount
	<magritteDescription>
	^ MANumberDescription new
		comment: 'The number of items to appear in the feed.';
		accessor: #itemCount;
		label: 'Item Count';
		priority: 370;
		beRequired;
		beEditable;
		bePositive;
		beInteger;
		yourself