testing
hasPermission: aPermission for: aUser
	"Test if the user aUser has the permission aPermission. This is the central method to test for permissions in Pier."

	(aUser notNil and: [ aUser isSuperuser ])
		ifTrue: [ ^ true ].
	(self owner = aUser and: [ self ownerPermissions includes: aPermission ])
		ifTrue: [ ^ true ].
	(self group notNil and: [ (self group includes: aUser) and: [ (self groupPermissions includes: aPermission) ] ])
		ifTrue: [ ^ true ].
	(self otherPermissions includes: aPermission)
		ifTrue: [ ^ true ].
	^ false