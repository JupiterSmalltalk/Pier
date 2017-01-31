private
logout
	self context: (self context user: nil).
	self context: (self context structure: self context root).
	self session presenter home