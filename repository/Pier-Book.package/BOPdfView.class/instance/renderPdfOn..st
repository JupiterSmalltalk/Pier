rendering
renderPdfOn: aStream
	| fullname stream latexCommand bibtexCommand indexCommand |
	fullname := self directory fullNameFor: self filename.
	[ stream := self directory forceNewFileNamed: self filename , '.tex'.
	[ stream nextPutAll: (self writer write: self book) ]
		ensure: [ stream close ].
	latexCommand := self latex , ' -output-directory ' , self directory fullName printString , ' -interaction batchmode ' , (fullname , '.tex') printString.
	bibtexCommand := self bibtex , ' -output-directory ' , self directory fullName printString , ' -interaction batchmode ' , (fullname , '.tex') printString.
	indexCommand := self intex , ' -output-directory ' , self directory fullName printString , ' -interaction batchmode ' , (fullname , '.tex') printString.
	self process
		waitForCommand: latexCommand;
		waitForCommand: bibtexCommand;
		waitForCommand: indexCommand;
		waitForCommand: latexCommand;
		waitForCommand: latexCommand.
	stream := self directory oldFileNamed: self filename , '.pdf'.
	^ [ self streamFrom: stream to: aStream ]
		ensure: [ stream close ] ]
			ensure: [ self directory recursiveDelete. directory := nil ]