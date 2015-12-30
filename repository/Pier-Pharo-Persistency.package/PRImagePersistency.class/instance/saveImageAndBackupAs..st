private
saveImageAndBackupAs: aString
	| directory image imageName changeName |
	directory := FileDirectory default.
	image := SmalltalkImage current.
	image closeSourceFiles.
	[ 
	imageName := aString , '.' , FileDirectory imageSuffix.
	changeName := aString , '.' , FileDirectory changeSuffix.
	((directory fileExists: imageName) not and: [ (directory fileExists: changeName) not ])
		ifTrue: [ 
			directory / imageName deleteIfAbsent: [ ].
			directory / changeName deleteIfAbsent: [ ].
			image imageFile  copyTo: (directory / imageName).
			image changesFile copyTo: (directory / changeName).
			Smalltalk setMacFileInfoOn: (directory fullPathFor: changeName) ] ]
		ensure: [ 
			image
				openSourceFiles;
				snapshot: true andQuit: false ]