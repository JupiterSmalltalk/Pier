rendering
renderEntryMeta: aStatus on: html
	html anchor
		url: 'http://twitter.com/' , self username , '/statuses/' , aStatus id printString;
		with: (self agoString: aStatus created)