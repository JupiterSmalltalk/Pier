rendering
renderCloudOn: html
	self tagsByName 
		do: [ :assoc | self renderTag: assoc on: html ]
		separatedBy: [ html text: ' ' ]