exporting
rewriteRecursiveMethodsFor: kernel
	| instanceVariables component |
	instanceVariables := String streamContents: [ :stream |
		stream << 'root '.
		recursiveMethods do: [ :each | 
			stream nextPutAll: each ]
			separatedBy: [ stream nextPut: Character space ] ].
		
	component := self createClassFor: kernel instanceVariableNames: instanceVariables.
	
	"this is somewhat hacky - we rewrite reentrant component creation methods with lazy initialiser.
	A two pass generator would remove the need for this hack - but would be more complex. "
	recursiveMethods do: [ :each | 
		| method existingMethodStream |
		existingMethodStream := (component sourceCodeAt: (each, ':') asSymbol) greaseString readStream.
		existingMethodStream nextLine; nextLine.
		method := String streamContents: [ :stream |
			stream 
				<<  each << ': aKernel' << String cr
				<< '	 ^ ' << each << ' ifNil: [ ' << String cr
				<< '		| structure |' << String cr
				<< '	' << (existingMethodStream nextLine) greaseString << String cr
				<< '		' << each << ' := structure.' << String cr
				<< (existingMethodStream upToAll: '	^ structure') greaseString	
				<< '		' << each << ' ]' ].
				
		self compileMethod: method intoComponent: component ]