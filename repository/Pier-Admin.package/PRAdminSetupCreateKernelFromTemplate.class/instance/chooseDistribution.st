main task
chooseDistribution
	| choosenDistributionInfo |
		
	[ choosenDistributionInfo isNil or:  [choosenDistributionInfo selectedDistribution  isNil ] ] whileTrue: [
		choosenDistributionInfo := (self call: PRAdminSetupChooseDistribution new).
		(self ifPresentConfirmRemovalOfApplicationAt:  choosenDistributionInfo applicationPath) ifFalse: [ choosenDistributionInfo := nil ] ].
	
	^ choosenDistributionInfo