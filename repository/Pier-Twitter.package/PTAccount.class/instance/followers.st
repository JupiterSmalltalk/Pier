querying
followers
	"Answer the authorized user's followers' current status."
	
	^ followers ifNil: [ followers := self call: 'http://twitter.com/statuses/followers.xml' class: PTUser ]