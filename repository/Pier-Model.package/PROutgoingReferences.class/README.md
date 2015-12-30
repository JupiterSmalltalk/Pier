I am a pluggable visitor visiting and probably following outgoing references. To do so I visit all the links of the page and evaluate my pluggable block for each of them. If the ==continue== block answers ==true== I follow the link and continue visiting the references of the target structure. The default behavior of the ==continue== block is to follow the link only if it is embedded. I take care not to run into infinite recursion, so no structure will be visited more than once.

!Examples
The following example answers a collection of referenced pages from ==aStructure==:

=(aStructure outgoingReferences
=	collect: [ :each | each target ])
=		asSet
		
The following example answers a collection of all broken references that can be reached from ==aStructure==:

=aStructure outgoingReferences
=	continue: [ :each | each isBroken not ];
= 	collect: [ :each | each isBroken ]