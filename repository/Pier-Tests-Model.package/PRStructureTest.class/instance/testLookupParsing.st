tests-lookup
testLookupParsing
	self assert: (PRPathLookup new stream: 'abc' readStream; readNext) = 'abc'.
	self assert: (PRPathLookup new stream: 'abc/' readStream; readNext) = 'abc'.

	self assert: (PRPathLookup new stream: 'abc/def' readStream; readNext) = 'abc'.
	self assert: (PRPathLookup new stream: 'abc/def/' readStream; readNext) = 'abc'.

	self assert: (PRPathLookup new stream: 'abc' readStream; readNext; readNext) = ''.
	self assert: (PRPathLookup new stream: 'abc/' readStream; readNext; readNext) = ''.

	self assert: (PRPathLookup new stream: 'abc/def' readStream; readNext; readNext) = 'def'.
	self assert: (PRPathLookup new stream: 'abc/def/' readStream; readNext; readNext) = 'def'