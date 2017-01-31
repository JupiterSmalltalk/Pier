private
suggestApplicationPathFrom:  aKernelName
	| suggestedPath |

	suggestedPath := aKernelName collect: [ : char | 
		Character space = char 
			ifTrue: [ $- ]
			ifFalse: [ char asLowercase ] ].
		
	^ suggestedPath select: [ :char | 
		PRPath isValidCharacter: char ]