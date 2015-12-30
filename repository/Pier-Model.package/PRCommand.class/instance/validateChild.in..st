validating
validateChild: aChildStructure in: aStructure
	"Make sure that ==aChildStructure== can be added as child or replace an existing child in a ==aStructure==."

	self validateChild: aChildStructure named: aChildStructure name in: aStructure