dependencies
jqueryWidgetBox: spec
  spec
    for: #'common'
    do: [ 
      spec
        configuration: 'JQueryWidgetBox'
        with: [ 
          spec
            repository:
                'http://smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main';
            version: '2.8' ].
      spec
        project: 'JQuery Widgetbox FormExample'
          copyFrom: 'JQueryWidgetBox'
          with: [ spec loads: #('JQWidgetBox-FormExample-Core') ];
        project: 'JQuery Widgetbox UILayout'
          copyFrom: 'JQueryWidgetBox'
          with: [ spec loads: #('JQWidgetBox-UILayout-Core') ] ]