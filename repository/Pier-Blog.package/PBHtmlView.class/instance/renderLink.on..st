rendering-meta
renderLink: anEntry on: html
	html anchor
		class: 'link';
		url: (anEntry isPost
			ifTrue: [ (self context structure: anEntry) url ]
			ifFalse: [
				(self context
					structure: (anEntry parents reverse
						detect: [ :each | each isPost ]))
					url fragment: anEntry uuid ]);
		with: 'link'.
	html text: ' '