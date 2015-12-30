actions
start
	"Schedule the receiver to take a snapshot after the configured duration."

	self isScheduled
		ifTrue: [ ^ self ].
	process := [ self process ]
		newProcess.
	process 
		priority: Processor userBackgroundPriority;
		name: 'pier'.
	process resume