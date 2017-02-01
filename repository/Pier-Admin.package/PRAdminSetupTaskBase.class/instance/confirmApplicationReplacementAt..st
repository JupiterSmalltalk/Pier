admin ui tasks
confirmApplicationReplacementAt: dispatcherPathName
  ^ self
    confirmError: [ :r | 
      r text: 'An application is already registered at: '.
      r anchor
        url: '/' , dispatcherPathName;
        with: '''/' , dispatcherPathName , '''.'.
      r break.
      r
        text:
          'If you continue this application will be replaced with the selected Pier instance. Continue?' ]