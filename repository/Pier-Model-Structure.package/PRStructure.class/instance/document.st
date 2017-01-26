accessing-dynamic
document
	"Answer a default document to represent the receiver, by default just embed itself."

	^ PRInternalLink new
		embedded: true;
		reference: '.';
		owner: self;
		target: self;
		yourself