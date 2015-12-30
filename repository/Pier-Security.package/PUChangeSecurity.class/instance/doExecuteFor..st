events
doExecuteFor: aStructure
	"Apply the changes to aStructure. Override this method to further modify aStructure. This method is automatically called by #doExecute for all the requested structure."

	self accessor
		write: (self operator = #set
			ifTrue: [ self permissions copy ]
			ifFalse: [
				self operator = #add
					ifTrue: [
						(self accessor read: aStructure)
							copyWithAll: self permissions ]
					ifFalse: [
						self operator = #remove
							ifTrue: [
								(self accessor read: aStructure)
									copyWithoutAll: self permissions ]
							ifFalse: [ ^ self ] ] ])
		to: aStructure