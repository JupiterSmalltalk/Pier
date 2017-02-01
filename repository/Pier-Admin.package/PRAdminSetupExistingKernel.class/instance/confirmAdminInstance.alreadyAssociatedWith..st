tasks
confirmAdminInstance: adminInstancePath alreadyAssociatedWith: selectedKernelPathPair
  ^ self
    confirmError: [ :r | 
      r
        text: 'The kernel you selected: ';
        break;
        break;
        strong: selectedKernelPathPair;
        break;
        break;
        text: 'is already associated with admin instance at:';
        break;
        break.
      r anchor
        url: adminInstancePath;
        with: adminInstancePath.
      r
        break;
        break;
        text: 'Do you want to continue by logging into: '.
      r anchor
        url: adminInstancePath;
        with: adminInstancePath ]