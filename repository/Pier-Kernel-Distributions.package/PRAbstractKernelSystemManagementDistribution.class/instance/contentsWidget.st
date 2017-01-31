components
contentsWidget
	^ contentsWidget ifNil: [
		contentsWidget := (PRComponent named: 'contents')
			prototypeInstance: (PRContentsWidget new
				heading: '';
				yourself);
			yourself ]