rendering
renderBatcherOn: html
	(self batcher isOnFirstPage and: [ self batcher isOnLastPage ])
		ifFalse: [ html div class: 'batcher'; with: self batcher ]