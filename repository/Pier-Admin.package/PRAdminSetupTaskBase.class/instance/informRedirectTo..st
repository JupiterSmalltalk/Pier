admin ui tasks
informRedirectTo: path
	self twbsInform: [ :html | 
		html text: 'Continue to redirect to: ' ; break; break.
		html anchor url: '/', path; with: '/', path ]