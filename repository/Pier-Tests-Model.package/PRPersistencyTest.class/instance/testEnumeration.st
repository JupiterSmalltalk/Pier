tests-smoke
testEnumeration
	self persistency do: [ :each | ].
	self persistency do: [ :each | ] for: self kernel root.
	
	self persistency reverseDo: [ :each | ].
	self persistency reverseDo: [ :each | ] for: self kernel root