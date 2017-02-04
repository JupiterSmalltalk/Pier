adding
addLatexTo: anArchive
	| contents |
	contents := (self writer write: self book)
		copyReplaceAll: MAExternalFileModel baseDirectory fullName , FileDirectory slash
		with: String new.
	anArchive
		addString: (self requestContext codec encode: contents)
			asByteArray
		as: self book name , '.tex'