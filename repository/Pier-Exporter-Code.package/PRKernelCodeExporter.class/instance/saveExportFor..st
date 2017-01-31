exporting
saveExportFor: aKernel
	| folder |
	folder := self baseDirectory / aKernel name.
	(folder respondsTo: #ensureCreateDirectory) ifTrue: [ 
		folder ensureCreateDirectory ]
	ifFalse: [  
		folder ensureDirectory].
	" use filetree if possible "
	(Smalltalk at: #MCFileTreeRepository ifAbsent: [ nil ])
		ifNil: [ 
			Gofer new 
				directory: folder fullName;
				package: 'Pier-Exported-Code';
				commit: 'Automatic save from Pier-Exporter' ]
		ifNotNil: [
			Gofer new 
				url: ('filetree://', folder fullName);
				package: 'Pier-Exported-Code';
				commit: 'Automatic save from Pier-Exporter' ]