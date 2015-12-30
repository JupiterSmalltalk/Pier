tests-user
testUserRemoveGroups
	user1 addGroup: group1; addGroup: group2; removeGroup: group2.
	self assert: user1 groups = (OrderedCollection with: group1).
	self assert: group1 users equalElements: (Set with: user1).
	self assert: group2 users equalElements: (Set new)