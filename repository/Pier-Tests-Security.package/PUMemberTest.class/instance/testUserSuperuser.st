tests-user
testUserSuperuser
	self deny: user1 superuser.
	self deny: user1 isSuperuser.

	user1 superuser: true.
	self assert: user1 superuser.
	self assert: user1 isSuperuser