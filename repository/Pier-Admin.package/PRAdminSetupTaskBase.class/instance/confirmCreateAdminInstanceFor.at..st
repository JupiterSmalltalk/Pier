admin ui tasks
confirmCreateAdminInstanceFor: kernelName at: dispatcherName
  | adminInstanceDispatcherName answer |
  adminInstanceDispatcherName := dispatcherName , '-admin'.
  answer := self
    confirmInfo: [ :html | 
      html
        text:
          'Create a Pier Admin instance to manage the created kernel: ''' , kernelName
            , ''', path: '.
      html anchor
        url: '/' , dispatcherName;
        with: '/' , dispatcherName.
      html
        text: '?';
        break.
      html
        text: 'The admin instance will be created at: ';
        break;
        break;
        code: [ 
              html
                text: '/';
                text: adminInstanceDispatcherName ];
        break;
        break;
        text: 'Create Pier Admin instance?' ].
  ^ answer
    ifTrue: [ adminInstanceDispatcherName ]
    ifFalse: [ nil ]