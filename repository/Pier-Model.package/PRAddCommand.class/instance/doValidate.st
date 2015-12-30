events
doValidate
	"Verify that the new structure can be added before launching #doExecute. Basically, the name must be unique."

	super doValidate.
	self validateChild: self child in: self structure