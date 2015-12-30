private
read: aSymbol
	self greaseDeprecatedApi: 'PRWidgetPropertyBase>>#read:' details: 'use PRWidgetPropertyBase>>readUsing: in preference'. 
	
	^ self readUsing: (self perform: aSymbol)