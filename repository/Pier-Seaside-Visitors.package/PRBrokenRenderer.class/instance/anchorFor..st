private
anchorFor: aLink
	^ (super anchorFor: aLink)
		class: 'broken';
		yourself