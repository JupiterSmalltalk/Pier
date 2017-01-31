private
buildCommand
	^ (self context
		structure: self comment
		command: self comment editCommandClass new)
			command