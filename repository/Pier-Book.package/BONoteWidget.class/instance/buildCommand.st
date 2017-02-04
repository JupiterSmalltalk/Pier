private
buildCommand
	^ (self context
		structure: self note
		command: self note editCommandClass new)
			command