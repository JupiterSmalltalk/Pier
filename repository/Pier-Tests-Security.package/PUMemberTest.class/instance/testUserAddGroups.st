tests-user
testUserAddGroups
	user1 addGroup: group1; addGroup: group2.
	self assert: user1 group = group1.
	self assert: user1 groups = (OrderedCollection with: group1 with: group2).
	self assert: group1 users equalElements: (Set with: user1).
	self assert: group2 users equalElements: (Set with: user1)