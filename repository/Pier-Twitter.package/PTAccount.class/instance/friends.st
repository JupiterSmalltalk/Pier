querying
friends
	"Answer the authorized user and their friends' current status."
	
	^ friends ifNil: [ friends := self call: 'http://twitter.com/statuses/friends.xml' class: PTUser ]