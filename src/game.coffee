@game = null

# Helpers
@timeout = (delay, callback) ->
  setTimeout(callback, delay)

@radian = (degree) ->
  (Math.PI / 180) * degree

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
    @pacman = new Pacman(@)

  render: ->
    @base.render()

  addToScene: (object) ->
    @base.addToScene(object)
