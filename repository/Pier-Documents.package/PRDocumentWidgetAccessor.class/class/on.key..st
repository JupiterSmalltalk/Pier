instance creation
on: selector key: key
	^ self 
		on: (MASelectorAccessor selector: selector)
		accessor:  (MADictionaryAccessor key: key)