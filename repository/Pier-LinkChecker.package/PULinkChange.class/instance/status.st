accessing
status
	"Answer an array with status message and status string."
	
	^ status ifNil: [ status := self updateStatus ]