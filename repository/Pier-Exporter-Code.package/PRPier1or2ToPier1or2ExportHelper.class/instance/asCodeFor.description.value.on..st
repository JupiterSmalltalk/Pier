export helpers
asCodeFor: structure description: description value: value on: stream
	| structureClass |
	structureClass := structure class greaseString.
	stream << '(' << structureClass << ' description detect: [ :each | each label = ''' << description label << ''' ]) accessor write: ' << value << ' to: structure. '