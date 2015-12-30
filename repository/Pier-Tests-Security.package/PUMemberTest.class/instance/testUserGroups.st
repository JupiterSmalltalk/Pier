tests-user
testUserGroups
	user1 groups: (Array with: group1 with: group2).
	self assert: user1 groups = (OrderedCollection with: group1 with: group2).
	self assert: group1 users equalElements: (Set with: user1).
	self assert: group2 users equalElements: (Set with: user1).

	user1 groups: (Array with: group1).
	self assert: user1 groups = (OrderedCollection with: group1).
	self assert: group1 users equalElements: (Set with: user1).
	self assert: group2 users equalElements: (Set new)