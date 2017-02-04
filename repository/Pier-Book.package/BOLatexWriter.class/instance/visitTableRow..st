visiting-document
visitTableRow: aTableRow
	self visitAll: aTableRow children separatedBy: [ stream nextPut: $& ]