rendering
renderContentOn: html
	| timeline |
	timeline := self account timeline ifNil: [ ^ self ].
	timeline := timeline first: (timeline size min: self count).
	html unorderedList class: 'twitter'; with: [
		timeline do: [ :each | 
			html listItem: [
				self renderEntry: each on: html ] ] ]