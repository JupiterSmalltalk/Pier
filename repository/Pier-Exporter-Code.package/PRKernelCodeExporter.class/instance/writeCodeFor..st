accessing
writeCodeFor: structure
	| methods method codeBuilder selector |
	selector := structure asSelector.
	
	"recursion guard"
	(exportedMethods includes: selector)
		ifTrue: [ recursiveMethods add: selector. ^ #() ]
		ifFalse: [ exportedMethods add: selector ].
	
	methods := OrderedCollection new.
	
	method :=  String streamContents: [ :stream | 
		stream << selector << ': aKernel' << String cr << 
			'	| structure  |' << String cr <<
			'	structure := ' << structure class greaseString << ' named: ''' << structure name << '''.' << String cr.

		codeBuilder := PRCodeBuilderDescriptionVisitor structure: structure methods: methods exporter: self on: stream.
		(structure perform: self magritteSelector) do: [ :aDescription |
			codeBuilder visit: aDescription ].
		
		structure class name = #PRComponent ifTrue: [ self exportHelper handlerPRComponent: structure initialisationOn: stream ].
		
		structure enumerator size > 2 
			ifTrue: [
				stream << '	#('.
				structure enumerator do: [ :each | stream << '	#''' << (each asSelector) << ':''' ] separatedBy: [ stream cr ].
				stream << ' ) do: [ :each | ' << String cr << '	structure addChild: (self perform: each with: aKernel) ].' << String cr ]
			ifFalse: [ 
				structure enumerator do: [ :each | 
					stream << '	structure addChild: (self ' << (each asSelector) << ': aKernel).' ] ].

		self writeOwnershipAndSecurityCodeFor: structure on: stream.
		
		stream <<'	^ structure' ].
	
	methods add: method.
	^ methods