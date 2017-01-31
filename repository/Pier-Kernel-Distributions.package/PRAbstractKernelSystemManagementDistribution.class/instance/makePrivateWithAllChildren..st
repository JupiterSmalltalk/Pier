rights
makePrivateWithAllChildren: structure
	structure enumerator
		with;
		all;
		do: [ :each |
			self makePrivate: each ]