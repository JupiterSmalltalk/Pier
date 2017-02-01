tests
testPRStructureAsCode
	self assert: (PRKernel defaultRoot lookupPath: '/information/syntax') asCode equals: '(self informationsyntax: aKernel)'