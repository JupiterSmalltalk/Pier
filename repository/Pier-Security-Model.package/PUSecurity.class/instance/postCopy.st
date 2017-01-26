copying
postCopy
	super postCopy.
	self ownerPermissions: self ownerPermissions copy.
	self groupPermissions: self groupPermissions copy.
	self otherPermissions: self otherPermissions copy