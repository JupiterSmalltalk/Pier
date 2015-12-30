actions
snapshot
	| filename |
	filename := namePrefix , DateAndTime now asSortableString.
	[ self saveImageAndBackupAs: filename ] valueUnpreemptively.
	self message: 'Last snapshot ' , filename printString , ' at ' , DateAndTime now greaseString.
	self cleanupBackupImages