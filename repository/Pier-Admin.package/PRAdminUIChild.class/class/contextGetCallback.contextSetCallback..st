instance creation
contextGetCallback: contextGetCallback contextSetCallback: contextSetCallback
	^ self new
		contextGetCallback: contextGetCallback; 
		contextSetCallback: contextSetCallback;
		yourself