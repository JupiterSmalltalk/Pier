action
importBlog: theImportedBlog
	theImportedBlog items do: [ :each | 
		self blogStructure addChild: ((PBPost named: (self nameFromTitle: each title))
			title: each title;
			publication: each pubDate asTimeStamp;
			author: each authorString;
			tags: each tags;
			contents: each content;
			yourself) ].
		
	self successMessage: 'Successfully imported blog. Continue to administration setup.'.