rendering
renderContentOn: html
	PRContentsRendered value
		ifTrue: [ ^ self ].
	PRContentsRendered use: true during: [
		self heading isEmptyOrNil ifFalse: [
			html heading
				level: 1;
				class: 'heading';
				with: self heading ].
		html render: self component ]