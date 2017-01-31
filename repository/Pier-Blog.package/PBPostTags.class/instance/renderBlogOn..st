rendering
renderBlogOn: html
	self tags isEmpty ifTrue: [ ^ self ].
	html unorderedList: [
		self tags do: [ :assoc |
			html listItem: [
				self 
					renderFilter: assoc value
					with: assoc key
					on: html ] ] ]