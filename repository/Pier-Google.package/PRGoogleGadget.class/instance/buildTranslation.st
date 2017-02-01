private
buildTranslation
	| result response elements |
	result := Dictionary new.
	xml tagsNamed: #'Locale' childrenDoAndRecurse: [ :locale |
		response := [ HTTPSocket httpGet: (locale attributeAt: 'messages' ifAbsent: [ nil ]) ]
			ifError: [ :err | nil ].
		(response isNil or: [ response isString ]) ifFalse: [
			elements := [ XMLDOMParser parseDocumentFrom: response ]
				ifError: [ :err | nil ].
			elements isNil ifFalse: [
				elements tagsNamed: #'msg' childrenDoAndRecurse: [ :msg |
					result
						at: (msg attributeAt: 'name' ifAbsent: [ '' ])
						put: (msg contentString) ].
				^ result ] ] ].
	^ result