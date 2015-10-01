class @Board
  @MASS: 0
  @COLOR: 0x2121DE

  constructor: (game) ->
    @game = game
    @geometry = new THREE.BoxGeometry(80, 100, 5)
    @material = new THREE.MeshBasicMaterial({ color: Board.COLOR })
    @object = new Physijs.BoxMesh(@geometry, @material, Board.MASS)
    @game.addToScene(@object)
    @edge = new Edge(@object, @game)
    @addWalls()

  addWalls: ->
    @left_wall = new Wall(@game, 'Side')
    @left_wall.setPosition(-40, 0, 0)
    @right_wall = new Wall(@game, 'Side')
    @right_wall.setPosition(40, 0, 0)
    @top_wall = new Wall(@game, 'Edge')
    @top_wall.setPosition(0, 47.5, 0)
    @bottom_wall = new Wall(@game, 'Edge')
    @bottom_wall.setPosition(0, -47.5, 0)
