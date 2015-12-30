*pier-tests-security-private
bloggerUserInstance
	^ (PUUser named: 'james')
		addGroup: self bloggerGroup;
		password: 'bottom';
		yourself