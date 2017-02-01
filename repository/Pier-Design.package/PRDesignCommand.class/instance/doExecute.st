events
doExecute
	super doExecute.
	self structure styleSheets do: [ :each |
		each file
			filename: each file filename;	
			mimetype: 'text/css' ]