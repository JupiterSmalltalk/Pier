tests-utilties
testSuggestName
	command := self command
		suggestName: 'sucker for your sound'.
	self assert: self command name = 'sucker-for-your-sound'.
	self assert: self command title = 'Sucker for your sound'.
	
	command := self command
		suggestName: 'Gameboy&Homeboy'.
	self assert: self command name = 'gameboy_homeboy'.
	self assert: self command title = 'Gameboy&Homeboy'