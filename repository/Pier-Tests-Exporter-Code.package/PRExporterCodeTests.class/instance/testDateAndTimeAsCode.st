tests
testDateAndTimeAsCode
	self assert: (DateAndTime year: 1968 month: 6 day: 3 hour: 10 minute: 20 second: 15) asCode equals: '(DateAndTime year: 1968 month: 6 day: 3 hour: 10 minute: 20 second: 15)'.
	
	self assert: (DateAndTime year: 1968 month: 6 day: 3 hour: 10 minute: 20) asCode equals: '(DateAndTime year: 1968 month: 6 day: 3 hour: 10 minute: 20 second: 0)'