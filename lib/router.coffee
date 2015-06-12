Router.route '/', ->
  name: 'lists'
  @.render 'lists'

Router.route '/lists/:_id', ->
  list = Lists.findOne @.params._id
  @.render 'listsShow',
    data: list
