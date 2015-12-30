enumerating
do: aBlock
	"Evaluate aBlock for every structure visited by the receiver."

	self setBlock: aBlock; start: structure; setBlock: nil