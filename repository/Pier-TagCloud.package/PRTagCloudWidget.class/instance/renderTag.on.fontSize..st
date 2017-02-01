rendering
renderTag: anAssociation on: html fontSize: fontSize
	html span class: 'tag'; with: [
		html anchor
			callback: [ self focus: anAssociation ];
			style: 'font-size: ' , fontSize truncated asString , '%';
			with: anAssociation key.
		(self showFrequencies) ifTrue: [
			html span
				class: 'freq';
				with: [ html space; text: '('; render: anAssociation value size; text: ')' ] ] ]