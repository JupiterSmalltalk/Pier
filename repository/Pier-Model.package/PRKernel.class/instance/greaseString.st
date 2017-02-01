printing
greaseString
  ^ String streamContents: [ :stream | self printOn: stream ]