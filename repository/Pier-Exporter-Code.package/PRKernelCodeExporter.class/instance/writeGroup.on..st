exporting - permissions
writeGroup: group on: stream
	stream << '(PUGroup named: ''' << group name << ''');' << String cr