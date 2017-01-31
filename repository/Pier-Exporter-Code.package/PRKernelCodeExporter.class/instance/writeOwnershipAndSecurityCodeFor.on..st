exporting - permissions
writeOwnershipAndSecurityCodeFor: structure on: stream
	| securityDecoration |
	securityDecoration := structure securityDecoration.
	
	securityDecoration owner notNil ifTrue: [	
		stream nextPut: Character cr.	
		stream << '	structure securityDecoration owner: (aKernel userNamed: ''' << structure securityDecoration owner name << ''' ifNone: nil).' << String cr.
		self ifPermissions: securityDecoration ownerPermissions differFromStandard: [ :difference |
			stream << '	"difference: ' << difference << '"' << String cr.
			stream << '	structure securityDecoration ownerPermissions: '.
			self writePermissions: securityDecoration ownerPermissions on: stream ] ].
	
	securityDecoration group notNil ifTrue: [	
		stream << '	structure securityDecoration group: (aKernel groupNamed: ''' << structure securityDecoration group name << ''' ifNone: nil).' << String cr.
		self ifPermissions: securityDecoration groupPermissions differFromStandard: [  :difference |
			stream << '	"difference: ' << difference << '"' << String cr.
			stream << '	structure securityDecoration groupPermissions: '.
			self writePermissions: securityDecoration groupPermissions on: stream ] ].

	securityDecoration otherPermissions = self standardOtherPermissions ifFalse: [ 
		stream << '	structure securityDecoration otherPermissions: '.
		self writePermissions: securityDecoration otherPermissions on: stream ]