instance creation
kernel: kernel
	| pierComponent |
	pierComponent := self new
		kernel: kernel;
		yourself.
		
	pierComponent addContextFilter "need to manually add the context filter as #initialRequest: will not be called as we've only just created the component".
	
	^ pierComponent