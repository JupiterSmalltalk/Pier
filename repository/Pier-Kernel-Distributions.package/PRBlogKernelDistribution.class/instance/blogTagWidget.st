components
blogTagWidget
	^ blogTagWidget ifNil: [
		blogTagWidget := (PRComponent named: 'blogTags')
			title: 'Blog Tags';
			prototypeInstance: PBPostTags new;
			yourself ]