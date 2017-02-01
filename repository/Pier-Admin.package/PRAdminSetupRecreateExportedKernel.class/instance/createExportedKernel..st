tasks
createExportedKernel: kernelCreator
  kernelCreator register.
  self
    informSuccess: [ :html | 
      html
        text: 'Created kernel: ''';
        strong: kernelCreator kernelName;
        text: ''', path: '.
      html anchor
        url: kernelCreator dispatcherPathName;
        with: kernelCreator dispatcherPathName ]