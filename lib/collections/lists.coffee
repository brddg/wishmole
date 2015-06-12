@Lists = new Mongo.Collection "lists"

Lists.schema = new SimpleSchema
  name:
    type: String
  description:
    type: String
    optional: true
    autoform:
      rows: 5
  userId:
    type: String
    autoValue: ->
      @.userId
    autoform:
      display: false

Lists.attachSchema Lists.schema
