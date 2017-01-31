rendering-meta
renderPublication: anEntry on: html
	anEntry publication ifNil: [ ^ self ].
	html span
		class: 'publication';
		with: 'at ' , anEntry publication asDate printString ,
			', ' , anEntry publication asTime printMinutes.
	html text: ' '