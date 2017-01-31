rendering
renderHeading: aPost on: html 
	html heading level: 1; with: [
		html anchor
			name: aPost uuid.
		html anchor
			goto: (self context structure: aPost);
			with: [ html html: aPost title ] ]