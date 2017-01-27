*pier-seaside-urls
urlOn: aRenderer
	"Answer a Seaside URL to get into the receiving context."

	| url |
	^ aRenderer callbacks isNil
		ifTrue: [ self url ]
		ifFalse: [ 
			url := aRenderer context actionUrl copy.
			url
				purgeOtherFields;
				adaptToContext: self.
			(self command isRestful
				and: [ 
					(self application trackingStrategy isKindOf: WACookieSessionTrackingStrategy)
						and: [ (self application trackingStrategy cookieFromContext: self requestContext ifAbsent: [ nil ]) notNil ] ])
				ifTrue: [ url purgeSeasideFields ]
				ifFalse: [ 
					url queryFields
						at: '_n' put: nil;
						at: (aRenderer callbacks store: self activationCallback) put: nil ].
			url ]