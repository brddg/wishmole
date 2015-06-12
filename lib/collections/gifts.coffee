@Gifts = new Mongo.Collection "gifts"

Gifts.schema = new SimpleSchema
  name:
    type: String
  description:
    type: String
    optional: true
    autoform:
      rows: 5
  price:
    type: String
    optional: true
  url:
    type: String
    optional: true
  buyerId:
    type: String
    optional: true
  listId:
    type: String

Gifts.attachSchema Gifts.schema
