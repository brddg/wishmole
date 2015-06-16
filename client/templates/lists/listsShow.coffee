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

  "submit form": (event, template) ->
    event.preventDefault()
    input = $('[name="email"]')
    email = input.val()
    if _isEmail(email)
      Lists.update @._id,
        $addToSet:
          sharedWith:
            Meteor.userId()
      input.val ""
    else
      console.log "don't"

_isEmail = (email) ->
  /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test email
