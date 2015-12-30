testing
validateCommand: aCommand
	"Validate the evaluation of aCommand on the owning structure. Throws an error if this violates ther current permissions."

	(self hasPermission: aCommand permission for: aCommand context user)
		ifFalse: [ MAConditionError description: self magritteDescription signal: 'Insufficient permissions' ]