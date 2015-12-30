actions
stop
	"Stop the configured snapshot."

	self isScheduled
		ifTrue: [ process terminate ].
	process := nil 