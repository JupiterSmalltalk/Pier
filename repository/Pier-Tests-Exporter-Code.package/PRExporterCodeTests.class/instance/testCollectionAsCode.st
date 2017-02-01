tests
testCollectionAsCode
	self assert: (Set withAll: #(10 20)) asCode equals: '#(10 20)'