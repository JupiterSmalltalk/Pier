visiting
writerClass
	" old Pier has the Wiki writer, new Pier has the pillar writer "
	^Smalltalk at: #PRPillarWriter ifAbsent: [ Smalltalk at: #PRWikiWriter ]