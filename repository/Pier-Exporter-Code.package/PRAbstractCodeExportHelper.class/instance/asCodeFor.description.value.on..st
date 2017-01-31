export helpers
asCodeFor: structure description: description value: value on: stream
	stream << '	(structure magritteDescription detect: [ :each | each label = ''' << description label << ''' ]) accessor write: ' << value << ' to: structure. '