rights
setAdminUserGroupStartingAtStructure: startingStructure
	startingStructure enumerator
		with;
		all;
		do: [ :each |
			each securityDecoration owner: self kernel adminUser.
			each securityDecoration group: self kernel adminGroup ]