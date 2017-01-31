*pier-exporter-code
asCode
	^ String streamContents: [ :stream | self codeOn: stream ]