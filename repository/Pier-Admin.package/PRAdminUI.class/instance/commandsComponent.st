accessing
commandsComponent
	^ commandsComponent ifNil: [ commandsComponent := PRAdminCommands contextGetCallback: [ self context ] contextSetCallback: [ :newContext | self context: newContext ] ]