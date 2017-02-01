rendering
renderContentOn: html
	self source isNil
		ifTrue: [ ^ html div: '(no source structure specified)' ].
	self sourceChildren isEmpty
		ifTrue: [ ^ html div: '(no children in the source structure available)' ].
	html div
		id: #cycler;
		script:
				((html jQuery: #cycler) cycle
						fx: self effect;
						timeout: self timeout;
						delay: self delay;
						speed: self speed;
						pager: '#cyclerNav') greaseString;
		with: [ 
					self sourceChildren
						do: [ :each | 
							html div
								class: 'cyclerItem';
								with: [ self renderViewOf: each on: html ] ] ].
	html div
		id: #cyclerNav