private
expand: aString
	self context ifNil: [ ^aString ].
	^ PRMacroExpander default expand: aString with: self context