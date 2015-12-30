*pier-seaside-private
activationCallback
	^ WAActionCallback on: [
			PRCurrentContext value: self.
			(self command isView and: [ self command viewComponent isFullResponse ])
				ifTrue: [ self command viewComponent handle: self requestContext ] ]