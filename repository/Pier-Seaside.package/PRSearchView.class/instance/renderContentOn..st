rendering
renderContentOn: html
	self hasSearchForm
		ifTrue: [ self renderFormOn: html ].
	(self query isNil or: [ self items notEmpty ])
		ifTrue: [ self renderResultOn: html ]
		ifFalse: [ self renderNoResultOn: html ]