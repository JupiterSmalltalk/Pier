pier-seaside-urls
urlOn: aRenderer
	"Overridden to ensure only the creation of standard Seaside urls (not Pier Restful Urls), within Pier Admin - we need
	 to recover context from _s & _k and can't rely on the path"
	| url |
	^ aRenderer callbacks isNil
		ifTrue: [ self url ]
		ifFalse: [
			url := aRenderer context actionUrl copy.
			url purgeOtherFields; adaptToContext: self.

			url queryFields
				at: '_n' put: nil;
				at: (aRenderer callbacks store: self activationCallback) put: nil.
			url ]