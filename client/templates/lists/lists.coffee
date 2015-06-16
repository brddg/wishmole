Template.lists.helpers
  yourLists: ->
    Lists.find
      userId: Meteor.userId()

  sharedLists: ->
    Lists.find
      sharedWith: Meteor.userId()
