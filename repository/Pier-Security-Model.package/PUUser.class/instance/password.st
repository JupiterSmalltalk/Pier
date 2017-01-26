accessing
password
	^ password isNil ifFalse: [ String new: 8 withAll: $* ]