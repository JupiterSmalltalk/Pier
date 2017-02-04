private
streamFrom: aSourceStream to: aTargetStream
	aSourceStream binary. 
	aTargetStream binary.
	[ aSourceStream atEnd ] 
		whileFalse: [ aTargetStream nextPutAll: (aSourceStream next: 1024) ]