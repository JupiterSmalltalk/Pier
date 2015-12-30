tests-accessing
testTimestamp
	| stamp |
	self assert: self command timestamp isNil.
	self command timestamp: (stamp := GRPlatform current magritteTimeStampClass now).
	self assert: self command timestamp = stamp