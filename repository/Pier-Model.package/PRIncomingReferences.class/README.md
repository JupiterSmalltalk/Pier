I am a pluggable visitor to detect incoming references.

!Example
The following example opens inspectors on all instances of ==*PRInternalLink*== that point ==aStructure==:
=aStructure incomingReferences 
=	from: aRootStructure
=	to: aStructure
=	do: [ :each | each inspect ]