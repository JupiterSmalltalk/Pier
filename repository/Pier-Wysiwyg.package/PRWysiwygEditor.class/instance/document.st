private
document
  | document |
  document := PRPillarParser parse: self wikiText.
  self structureOwner notNil
    ifTrue: [ document owner: self structureOwner ].
  ^ document