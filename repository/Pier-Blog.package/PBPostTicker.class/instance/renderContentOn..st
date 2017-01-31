rendering
renderContentOn: html
	self blog isNil
		ifTrue: [ ^ html div: '(no blog specified)' ].
	self posts isEmpty
		ifTrue: [ ^ html div: '(no posts available)' ].
	html unorderedList class: 'postticker'; with: [
		self posts do: [ :each |
			html listItem: [
				self renderPost: each on: html ] ] ].
	self renderRssOn: html.