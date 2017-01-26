updating
updateRoot: aHtmlRoot
	super updateRoot: aHtmlRoot.
	aHtmlRoot title: self headTitle.
	self context command updateRoot: aHtmlRoot.
	self headAuthor isEmptyOrNil ifFalse: [
		aHtmlRoot meta
			name: 'author';
			content: self headAuthor ].
	self headKeywords isEmptyOrNil ifFalse: [
		aHtmlRoot meta
			name: 'keywords';
			content: self headKeywords ]