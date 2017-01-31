*pier-exporter-code
codeOn: aStream
	aStream << '(' << self class greaseString << ' newDay: '; print: self dayOfYear; << ' year: '; print: self year; << ')'