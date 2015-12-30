private
log: aContext
	| stream |
	stream := FileDirectory default
		fileNamed: 'transactions.txt'.
	[ self log: aContext on: stream setToEnd ]
		ensure: [ stream close ]