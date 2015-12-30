visiting-document
visitPreformatted: anObject 
	html preformatted: 
		[ anObject children 
			do: [ :each | html text: each text ]
			separatedBy: 
				[ html text: (String 
						with: Character cr
						with: Character lf) ] ]