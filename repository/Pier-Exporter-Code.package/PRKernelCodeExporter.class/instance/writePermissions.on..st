exporting - permissions
writePermissions: permissions on: stream
	stream << '(Set withAll: {'.
	permissions do: [ :each |
		(each isKindOf: PUAddPermission) 
			ifTrue: [
				stream << '(PUAddPermission on: ' << each command name << ' structure: ' <<  each structure name << ')' ]
			ifFalse: [
				stream << '(PUPermission on: ' << each command name << ')' ] ] 
		separatedBy: [ stream nextPutAll: '. ' ].
	stream << '}).' << String cr.