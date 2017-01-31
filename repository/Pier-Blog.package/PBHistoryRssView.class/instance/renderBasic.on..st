rendering-parts
renderBasic: aContext on: rss
	rss title: (self titleFor: aContext).
	rss link: (self urlFor: aContext).
	rss publicationDate: (RRRfc822DateTime
		newDateAndTime: aContext command timestamp).
	rss guid 
		beNoPermaLink;
		with: ((self urlFor: aContext)
			fragment: aContext command timestamp 
				asSeconds greaseString;
			yourself)