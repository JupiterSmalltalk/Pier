*pier-seaside-protected
updateUrl: anUrl 
	"Override to customize the URL used to display this command."
	
	self class = self structure defaultCommandClass 
		ifFalse: [ anUrl queryFields at: 'command' put: self class name greaseString ]