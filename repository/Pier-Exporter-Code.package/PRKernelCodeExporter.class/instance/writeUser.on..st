exporting - permissions
writeUser: user on: stream
	stream << '((PUUser named: ''' << user name << ''')' << String cr <<
		'			groups: (OrderedCollection new' << String cr. 
	user groups do: [ :each |
		stream << '				add: (aKernel groupNamed: ''' << each name << ''' ifNone: nil);' << String cr ].
	stream << '				yourself);' << String cr.
	stream << '			instVarNamed: ''password'' put: ' << (user instVarNamed: 'password') asCode << ';' << String cr.
	stream << '			email: '; print: user email; nextPut: $;; nextPut: Character cr.
	stream << '			firstName: '; print: user firstName; nextPut: $;; nextPut: Character cr.
	stream << '			lastName: '; print: user lastName; nextPut: $;; nextPut: Character cr.			
	user superuser ifTrue: [
		stream << '			superuser: true;' << String cr ].
	stream << '			yourself);' << String cr