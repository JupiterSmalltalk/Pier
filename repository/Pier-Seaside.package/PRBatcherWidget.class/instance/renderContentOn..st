rendering
renderContentOn: html 
	self siblings isEmpty ifTrue: [ ^ self ].
	(self showFirstLast) ifTrue: 
		[ self 
			renderLabel: '|<'
			class: 'first'
			structure: self siblings first
			on: html ].
	(self showPreviousNext) ifTrue: 
		[ self 
			renderLabel: '<<'
			class: 'previous'
			structure: self previousSibling
			on: html ].
	(self showNumbers) ifTrue: 
		[ self siblings keysAndValuesDo: 
			[ :index :each | 
			self 
				renderLabel: index
				class: 'number'
				structure: each
				on: html ] ].
	(self showPreviousNext) ifTrue: 
		[ self 
			renderLabel: '>>'
			class: 'next'
			structure: self nextSibling
			on: html ].
	(self showFirstLast) ifTrue: 
		[ self 
			renderLabel: '>|'
			class: 'last'
			structure: self siblings last
			on: html ]