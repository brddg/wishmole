Template.listsShow.helpers
  gifts: ->
    Gifts.find
      listId: @._id
