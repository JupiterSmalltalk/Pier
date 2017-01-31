accessing-dynamic
batcher
	^ batcher ifNil: [ batcher := WABatchedList new items: self posts; batchSize: 5 ]