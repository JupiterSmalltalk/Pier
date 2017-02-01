private
magritteDescription
	| description |
	description := MAContainer new.
	description addAll: (self 
		descriptionsForGroup: 'Template'
		selector: #environment).
	self structure styleSheets keysAndValuesDo: [ :index :each | 
		description addAll: (self 
			descriptionsForGroup: 'Style Sheets'
			selector: #styleSheets
			index: index) ].
	^ description