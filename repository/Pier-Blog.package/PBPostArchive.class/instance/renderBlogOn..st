rendering
renderBlogOn: html
	self archive isEmpty ifTrue: [ ^ self ].
	html unorderedList: [
		self archive do: [ :assoc |
			html listItem: [
				self 
					renderFilter: assoc value
					with: assoc key name , ' ' , assoc key year greaseString
					on: html ] ] ]