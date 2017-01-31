components
notesComponent
	^ notesComponent ifNil: [ notesComponent := 
		(PRComponent named: 'notes')
			title: 'Notes';
			prototypeInstance: BONoteWidget new;
			yourself ]