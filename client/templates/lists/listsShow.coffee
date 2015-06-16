Template.listsShow.helpers
  gifts: ->
    Gifts.find
      listId: @._id

Template.listsShow.events
  "click [data-purchase-item]": (event, template) ->
    giftId = event.target.dataset["purchaseItem"]
    Gifts.update giftId,
      $set:
        buyerId: Meteor.userId()

