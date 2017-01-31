accessing-description
descriptionFeedForward
	<magritteDescription>
	^ MAStringDescription new
		accessor: #feedForward;
		label: 'Feed Forward';
		priority: 315;
		comment:
				'The url to forward the feed to. This is useful when used together with services such as FeedBurner or Google AdSense. The original feed can be reached by concatenating the original URL with ''&noforward.''';
		beEditable;
		yourself