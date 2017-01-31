visiting
visitFileDescription: aDescription
	| fileModel |
	fileModel := aDescription accessor read: structure.

	stream 
		<< '	structure file: (' << fileModel class greaseString << ' new
		filename: ' << fileModel filename asCode << ';
		mimetype: ' << fileModel mimetype asCode.
		fileModel class name = #MAExternalFileModel ifFalse: [
			| fileModelContents |
			fileModelContents := fileModel contents.
			fileModelContents isEmptyOrNil
				ifTrue: [ stream << ').' << String cr]
				ifFalse: [
			"deliberately use #asString on the ByteArray rather than #greaseString - as #greaseString generates a string representation of the ByteString eg  '#[0 1 2 3]' where #asString
			converts the ByteArray to a string"
					stream << ';' << String cr.
					stream << '		contents: ' << (fileModel isText
							ifTrue: [ fileModelContents asString asCode ]
							ifFalse: [ fileModelContents asCode ]) << ').' << String cr ] ].
	fileModel class name = #MAExternalFileModel ifTrue: [
		stream << ').' << String cr.
		stream << '		structure file directory: ' << fileModel location asCode << '.' << String cr.
		stream << '		"url: ' << (fileModel baseUrl ifNil: [ '' ])  << '/' << (fileModel location reduce: [ :a :b | a , '/' , b ])  << '/' << fileModel filename greaseString << '"' << String cr ]