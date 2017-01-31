components
blogArchiveWidget
	^ blogArchiveWidget ifNil: [
		blogArchiveWidget := (PRComponent named: 'blogArchive')
			title: 'Blog Archive';
			prototypeInstance: PBPostArchive new;
			yourself ]