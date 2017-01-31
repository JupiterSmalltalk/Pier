*pier-exporter-code
asCodeFor: structure description: description value: value exporter: exporter on: stream
	stream << '	structure ' << self writeSelector greaseString << ' ' << value << '.'