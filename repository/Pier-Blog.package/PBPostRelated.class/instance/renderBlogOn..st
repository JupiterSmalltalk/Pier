rendering
renderBlogOn: html
	self related isEmpty
		ifTrue: [ ^ self ].
	html unorderedList: [
		self related do: [ :each |
			html listItem: [
				html anchor
					goto: (self context structure: each);
					with: [ html html: each menu ] ] ] ]