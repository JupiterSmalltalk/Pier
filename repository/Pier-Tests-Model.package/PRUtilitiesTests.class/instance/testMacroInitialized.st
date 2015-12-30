tests-expander
testMacroInitialized
	| expander |
	expander := PRMacroExpander new.

	self assert: expander character = $%.
	self assert: expander table isEmpty