actions
refresh
	| response |
	xml := translations := description := nil.
	description := MAContainer withAll: self magritteDescription.
	response := [ HTTPSocket httpGet: self url ]
		ifError: [ :err | ^ self ].
	response isString 
		ifTrue: [ ^ self ].
	xml := [ XMLDOMParser parseDocumentFrom: response ]
		ifError: [ :err | ^ self ].
	xml 
		tagsNamed: #'UserPref'
		childrenDoAndRecurse: [ :each | self convertGenericPreference: each ]