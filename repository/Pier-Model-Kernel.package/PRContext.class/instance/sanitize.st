copying
sanitize
	"This method is used to prepare the receiver for persistent storage. Use it to clear temporal caches or references to UI objects."

	(Pragma allNamed: #sanitize from: self class to: PRContext)
		do: [ :pragma | self perform: pragma selector ].
	(Pragma allNamed: #sanitize from: self command class to: PRCommand)
		do: [ :pragma | self command perform: pragma selector ]