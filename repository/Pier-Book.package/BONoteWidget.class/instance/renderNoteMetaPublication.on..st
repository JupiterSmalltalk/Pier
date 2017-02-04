rendering-listing
renderNoteMetaPublication: aNote on: html 
	html span
		class: 'publication';
		with: '(' , aNote timestamp asDate printString , 
			', ' , aNote timestamp asTime printMinutes ,
			')'.
	html text: ' '