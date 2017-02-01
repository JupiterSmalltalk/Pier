accessing-dynamic
gadgetUrl
	| gadgetUrl |
	gadgetUrl := WAUrl new.
	gadgetUrl hostname: 'www.gmodules.com'; path: #('ig' 'ifr').
	self magritteDescription do: [ :desc |
		desc propertyAt: 'urlparam' ifPresent: [ :param |
			gadgetUrl addField: param value: (desc toString: (self readUsing: desc)) ] ].
	gadgetUrl addField: 'url' value: self url; addField: 'title' value: self title.
	gadgetUrl addField: 'synd' value: 'open'; addField: 'output' value: 'js'.
	^ gadgetUrl