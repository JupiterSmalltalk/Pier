tests
testEqualitiy
	self assert: group1 = group1.
	self assert: group2 = group2.

	self assert: user1 = user1.
	self assert: user2 = user2.
	self assert: user3 = user3.

	self deny: group1 = group2.
	self deny: group2 = group1.

	self deny: user1 = user2.
	self deny: user2 = user3.
	self deny: user3 = user1.

	self deny: group1 = user1.
	self deny: group2 = user1.
	self deny: user1 = group1.
	self deny: user2 = group1.
	self deny: user3 = group1