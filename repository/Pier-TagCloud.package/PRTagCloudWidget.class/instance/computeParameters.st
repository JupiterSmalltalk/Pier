private
computeParameters
	| count |
	count := self tagsByCount size max: 1.
	mean := 0.0.
	deviation := 0.0.
	self tagsByCount do: [ :each | mean := mean + each value size ].
	mean := mean / count.
	self tagsByCount do: [ :each | deviation := deviation + (mean - each value size) abs ].
	deviation := deviation / count.
	deviation = 0.0 ifTrue: [ deviation := 1.0 ]