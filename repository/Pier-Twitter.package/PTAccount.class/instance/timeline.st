querying
timeline
	"This command returns the authorized user's timeline."
	
	^ timeline ifNil: [ timeline := self call: 'http://twitter.com/statuses/user_timeline.xml' class: PTStatus ]