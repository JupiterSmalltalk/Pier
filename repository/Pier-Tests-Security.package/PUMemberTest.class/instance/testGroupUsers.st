tests-groups
testGroupUsers
	group1 users: (Array with: user1 with: user2).
	self assert: group1 users equalElements: (Set with: user1 with: user2).
	self assert: user1 groups = (OrderedCollection with: group1).
	self assert: user2 groups = (OrderedCollection with: group1).
	self assert: user3 groups = (OrderedCollection new).

	group1 users: (Array with: user2 with: user3).
	self assert: group1 users equalElements: (Set with: user2 with: user3).
	self assert: user1 groups = (OrderedCollection new).
	self assert: user2 groups = (OrderedCollection with: group1).
	self assert: user3 groups = (OrderedCollection with: group1)