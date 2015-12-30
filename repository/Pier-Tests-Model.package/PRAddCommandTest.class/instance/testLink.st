tests-accessing
testLink
	| link |
	self assert: self command link isNil.
	
	link := PRInternalLink new.
	link owner: self command structure.
	self command link: link.
	self assert: self command link = link.
	self assert: link isBroken.
	
	self command execute.
	self deny: link isBroken.
	self assert: link target name = self command name.
	self assert: link reference = 'untitled'