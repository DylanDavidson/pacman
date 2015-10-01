@game = null

@onload = ->
  @game = new Game()
  @render()

@render = ->
  @game.render()
  requestAnimationFrame(window.render)

class @Game
  constructor: ->
    @base = new Base()
    @board = new Board(@)

  render: ->
    @base.render()

  addToScene: (object) ->
    @base.addToScene(object)
