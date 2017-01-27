private
buildList
	"Answer a list of all edit contexts in the receiver that are visible."

	^ ((self context kernel persistency historyFor: self context structure) 
		select: [ :each | self isVisible: each ])
		reverse