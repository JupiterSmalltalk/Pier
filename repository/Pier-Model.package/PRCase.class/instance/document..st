accessing
document: aDocument
	document := aDocument.
	document isNil
		ifFalse: [ document owner: self ]