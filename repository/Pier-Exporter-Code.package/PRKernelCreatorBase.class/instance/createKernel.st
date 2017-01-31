creation
createKernel
  " building the kernel takes time and may fail. We start doing so in a local variable "

  | retVal |
  retVal := PRKernel new
    name: self kernelName;
    yourself.
  self addGroupsToKernel: retVal.
  self addUsersToKernel: retVal.
  retVal root: (self root: retVal).
  self clearInternalLinkTargetsStartingAt: retVal root.	" and register this kernel. Make sure we do not create a new one, if there already was one. "
  ^ kernel := (PRKernel instanceNamed: self kernelName)
    root: retVal root;
    groups: retVal groups andUsers: retVal users;
    yourself