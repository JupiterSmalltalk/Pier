components
introduction
	^ introduction ifNil: [ introduction := (BOPortion named: 'introduction')
		type: #chapter;
		contents: 'A book is formed by chapters. This is a chapter.
You can define references like: +ref:section+.

You can define +index:keywords!keywords+ keywords that appear automatically in the keyword index.';
		yourself ]