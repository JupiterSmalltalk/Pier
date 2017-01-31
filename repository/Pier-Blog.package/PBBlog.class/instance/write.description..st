private
write: anObject description: aDescription
	^ self class languages at: anObject ifAbsent: [ anObject ]