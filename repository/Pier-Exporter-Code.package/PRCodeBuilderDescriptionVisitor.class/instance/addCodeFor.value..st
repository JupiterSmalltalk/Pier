private
addCodeFor: aDescription value: value
	aDescription asCodeFor: structure value: value exporter: exporter on: stream.
	stream nextPut: Character cr