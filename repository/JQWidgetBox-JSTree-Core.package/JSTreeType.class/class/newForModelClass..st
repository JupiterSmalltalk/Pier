instance creation
newForModelClass: aModelClass
	^(self new) 
		name: aModelClass type;
		validChildren: (aModelClass validChildren ifNotNil: [:types | types collect: [:each | each type]]);
		icon: (aModelClass icon ifNotNil: [:icon | (JSTreeTypeIcon new) image: icon]);
		yourself