private
suggestKernelNameFrom: distribution
	| pierKernelNames suggestedName |
	
	suggestedName := distribution label.
	pierKernelNames := self pierKernelNames.
	pierKernelNames isEmpty ifTrue: [ ^ suggestedName ].

	[ pierKernelNames includes: suggestedName ] whileTrue: [	
	 suggestedName := suggestedName last isDigit
		ifTrue: [
			| digitSuffix |
			digitSuffix := (suggestedName last digitValue + 1) greaseString.
			suggestedName allButLast,  digitSuffix ]
		ifFalse: [
			suggestedName,  '1' ] ].
		
	^ suggestedName