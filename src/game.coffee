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
  @SOUND: new Audio('../sounds/intro.wav')
  @NINETY_DEG_IN_RADIAN: 1.57079633

  constructor: ->
    @base = new Base()
    @board = new Board(@)
    @pacman = new Pacman(@)
    @dots = new Dots(@)
    @pinky = new Ghost(@, 0)
    @blinky = new Ghost(@, 1)
    @inky = new Ghost(@, 2)
    @clyde = new Ghost(@, 3)
    Game.SOUND.play()
    @score = new Score(@)

  render: ->
    @updateCamera()
    @base.render()

  updateCamera: ->
   @base.updateCamera(@pacman)

  addToScene: (object) ->
    @base.addToScene(object)

  removeFromScene: (object) ->
    @base.removeFromScene(object)

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

  updateScore: (score) ->
    @score.setScore(score)
