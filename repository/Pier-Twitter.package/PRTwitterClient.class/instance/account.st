accessing
account
	"If there is an account make sure it is still up-to-date, otherwise refresh it if necessary."
	
	self owner properties at: #'twitter.account' ifPresent: [ :account |
		self owner properties at: #'twitter.updated' ifPresent: [ :updated |
			(self username = account email
				and: [ self password = account password
				and: [ updated + self timeout > TimeStamp now ] ])
					ifFalse: [ self owner properties removeKey: #'twitter.account' ifAbsent: [ ] ] ] ].
	^ self owner properties at: #'twitter.account' ifAbsentPut: [
		self owner properties 
			at: #'twitter.updated'
			put: TimeStamp now.
		PTAccount
			email: self username
			password: self password ]