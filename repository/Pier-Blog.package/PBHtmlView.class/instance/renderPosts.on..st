rendering
renderPosts: aCollection on: html
	html div class: 'posts'; with: [
		aCollection do: [ :each |
			self renderPost: each on: html ] ]