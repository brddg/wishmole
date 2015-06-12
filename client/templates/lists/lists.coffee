Template.lists.helpers
  lists: ->
    Lists.find
      userId: Meteor.userId()
