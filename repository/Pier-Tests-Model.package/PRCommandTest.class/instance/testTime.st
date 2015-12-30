tests-accessing
testTime
	| stamp |
	self assert: self command time isNil.
	self command timestamp: (stamp := GRPlatform current magritteTimeStampClass now).
	self assert: self command time = stamp asTime