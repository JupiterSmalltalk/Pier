patching
patchsetDo: aBlock
	"Evaluate aBlock for every patch operation of the receiver. The first argument is the operation, where #= is identity, #+ is insertion, and #- is deletion. The second argument is the object. The third argument the index in the source or target list."

	| sourceIndex targetIndex |
	sourceIndex := targetIndex := 1.
	[ sourceIndex <= source size or: [ targetIndex <= target size ] ] whileTrue: [
		[ sourceIndex <= source size and: [ (sourceText at: sourceIndex) isNil ] ] whileTrue: [
			aBlock value: #- value: (source at: sourceIndex) value: sourceIndex.
			sourceIndex := sourceIndex + 1 ].
		[ targetIndex <= target size and: [ (targetText at: targetIndex) isNil ] ] whileTrue: [
			aBlock value: #+ value: (target at: targetIndex) value: targetIndex.
			targetIndex := targetIndex + 1 ].
		targetIndex <= target size
			ifTrue: [ aBlock value: #= value: (targetText at: targetIndex) value: targetIndex ].
		sourceIndex := sourceIndex + 1.
		targetIndex := targetIndex + 1 ]