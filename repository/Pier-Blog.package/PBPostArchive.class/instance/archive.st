accessing
archive
	^ archive ifNil: [ archive := self buildArchive ]