@game = null

# Helpers
@timeout = (delay, callback) ->
  setTimeout(callback, delay)

@radian = (degree) ->
  (Math.PI / 180) * degree

@onload = ->
  @game = new Game()
  window.onkeydown = @game.keyListener
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

  keyListener: (e) =>
    key = if e.keyCode then e.keyCode else e.which
    if key == 37 # Left Arrow
      @pacman.xforce(-1)
    else if key == 38 # Up Arrow
      @pacman.yforce(1)
    else if key == 39 # Right Arrow
      @pacman.xforce(1)
    else if key == 40 # Down Arrow
      @pacman.yforce(-1)
