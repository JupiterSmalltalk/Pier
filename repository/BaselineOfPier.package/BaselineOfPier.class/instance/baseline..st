baselines
baseline: spec
  <baseline>
  self
    pillar: spec;
    magritte: spec;
    seaside: spec;
    bootstrap: spec;
    jqueryWidgetBox: spec;
    naFileUpload: spec.
  spec
    for: #'common'
    do: [ 
      spec blessing: #'baseline'.
      spec
        package: 'Pier-Model'
          with: [ spec requires: #('Magritte3 Core' 'Pillar Core') ];
        package: 'Pier-Tests-Model'
          with: [ spec requires: #('Pier-Model' 'Magritte3 Tests' 'Pillar Tests') ];
        package: 'Pier-Security' with: [ spec requires: #('Pier-Seaside') ];
        package: 'Pier-Seaside'
          with: [ spec requires: #('Pier-Model' 'Magritte3 Seaside' 'Seaside Javascript') ];
        package: 'Pier-Tests-Seaside-Model'
          with: [ spec requires: #('Pier-Tests-Model' 'Pier-Seaside' 'Seaside Javascript Tests') ];
        package: 'Pier-Tests-Security'
          with: [ spec requires: #('Pier-Security') ].
      spec
        package: 'Pier-Blog'
          with: [ spec requires: #('Pier Core' 'Seaside RSS' 'Pillar Core') ];
        package: 'Pier-Design' with: [ spec requires: #('Pier Core') ];
        package: 'Pier-Documents' with: [ spec requires: #('Pier Core') ];
        package: 'Pier-EditorEnh' with: [ spec requires: #('Pier Core') ];
        package: 'Pier-Exporter-Code' with: [ spec requires: #('Pillar Core') ];
        package: 'Pier-FileUpload-Common-Wysiwyg'
          with: [ spec requires: #('Pier-Wysiwyg') ];
        package: 'Pier-FileUpload-Wysiwyg'
          with: [ 
              spec
                requires:
                  #('Pier-FileUpload-Common-Wysiwyg' 'NAFileUpload-Component' 'Magritte-Json') ];
        package: 'Pier-FileUpload-Nginx-Wysiwyg'
          with: [ 
              spec
                requires:
                  #('Pier-FileUpload-Common-Wysiwyg' 'NAFileUpload-Nginx-Component' 'Magritte-Json') ];
        package: 'JQWidgetBox-JSTree-Core';
        package: 'Pier-JQuery'
          with: [ spec requires: #('Pier Core' 'JQuery Widgetbox FormExample') ];
        package: 'Pier-TagCloud' with: [ spec requires: #('Pier Core') ];
        package: 'Pier-Wysiwyg' with: [ spec requires: #('Pier-EditorEnh') ];
        package: 'Pier-Kernel-Distributions'
          with: [ spec requires: #('Pier-Model') ];
        package: 'Pier-Admin'
          with: [ 
              spec
                requires:
                  #('Pier Core' 'JQuery Widgetbox UILayout' 'JQWidgetBox-JSTree-Core' 'Pier-Kernel-Distributions' 'Pier-Blog' 'Pier-Design' 'Pier-Documents' 'Pier-EditorEnh' 'Pier-Exporter-Code' 'Pier-TagCloud' 'Pier-Wysiwyg') ];
        yourself.
      spec
        group: 'default' with: #('Pier Core');
        group: 'Pier Core' with: #('Pier-Model' 'Pier-Security' 'Pier-Seaside');
        group: 'Admin' with: #('Pier-Admin');
        group: 'Tests'
          with:
            #('Pier Core' 'Pier-Tests-Model' 'Pier-Tests-Security' 'Pier-Tests-Seaside-Model');
        yourself ].
  spec
    for: #'pharo'
    do: [ 
      spec
        project: 'Seaside Zinc'
          copyFrom: 'Seaside Javascript'
          with: [ spec loads: #('Zinc') ];
        package: 'Pier-Seaside'
          with: [ 
              spec
                requires: #('Seaside Zinc');
                postLoadDoIt: #'startSeasideAndRegisterPier' ] ].
  spec
    for: #'squeakCommon'
    do: [ 
      spec
        package: 'Pier-Model' with: [ spec includes: #('Pier-Pharo-Model') ];
        package: 'Pier-Seaside'
          with: [ spec includes: #('Pier-Pharo-Seaside') ];
        package: 'Pier-Pharo-Model' with: [ spec requires: #('Pier-Model') ];
        package: 'Pier-Pharo-Seaside'
          with: [ spec requires: #('Pier-Seaside') ];
        package: 'Pier-Pharo-Persistency'
          with: [ spec requires: #('Pier-Model') ];
        package: 'Pier-Tests-Pharo-Persistency'
          with: [ spec requires: #('Pier-Tests-Model' 'Pier-Pharo-Persistency') ];
        yourself.
      spec
        group: 'Core' with: #('Pier-Pharo-Persistency');
        group: 'Tests' with: #('Pier-Tests-Pharo-Persistency');
        yourself ].
  spec
    for: #'gemstone'
    do: [ 
      spec
        package: 'Pier-Model' with: [ spec includes: #('Pier-GemStone-Model') ];
        package: 'Pier-Seaside'
          with: [ spec includes: #('Pier-GemStone-Seaside') ];
        package: 'Pier-GemStone-Model' with: [ spec requires: #('Pier-Model') ];
        package: 'Pier-GemStone-Seaside'
          with: [ spec requires: #('Pier-Seaside') ];
        yourself ]