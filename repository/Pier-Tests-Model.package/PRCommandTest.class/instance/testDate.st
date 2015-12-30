tests-accessing
testDate
	| stamp |
	self assert: self command date isNil.
	self command timestamp: (stamp := GRPlatform current magritteTimeStampClass now).
	self assert: self command date = stamp asDate