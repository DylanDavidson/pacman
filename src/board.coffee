class @Board
  @MASS: 0
  @COLOR: 0x2121DE
  @COLOR: 'green'
  @ROTATION_MAX: 30

  constructor: (game) ->
    @game = game
    @geometry = new THREE.BoxGeometry(90, 100, 5)
    @material = new THREE.MeshBasicMaterial({ color: Board.COLOR })
    @object = new Physijs.BoxMesh(@geometry, @material, Board.MASS)
    @game.addToScene(@object)
    @edge = new Edge(@object, @game)

    @addSideWalls()
    @generateMaze()

  addSideWalls: ->
    @left_wall = new Wall(@game, 'Side')
    @left_wall.setPosition(-45, 0, 7.5)
    @right_wall = new Wall(@game, 'Side')
    @right_wall.setPosition(45, 0, 7.5)
    @top_wall = new Wall(@game, 'Edge')
    @top_wall.setPosition(0, 47.5, 7.5)
    @bottom_wall = new Wall(@game, 'Edge')
    @bottom_wall.setPosition(0, -47.5, 7.5)

  generateMaze: ->
    # Top Row
    @wall1 = new Wall(@game, 'FatMid')
    @wall1.setPosition(-31, 36, 7.5)
    @wall2 = new Wall(@game, 'FatWide')
    @wall2.setPosition(-14, 36, 7.5)
    @wall3 = new Wall(@game, 'FatMid')
    @wall3.setPosition(31, 36, 7.5)
    @wall4 = new Wall(@game, 'FatWide')
    @wall4.setPosition(14, 36, 7.5)
    @divider = new Wall(@game, 'TCenterV')
    @divider.setPosition(0, 40, 7.5)
    # Second Row
    @wall5 = new Wall(@game, 'ThinMid')
    @wall5.setPosition(-31, 26, 7.5)
    @wall6 = new Wall(@game, 'ThinMid')
    @wall6.setPosition(31, 26, 7.5)

    # Top T Formation
    @wall7 = new Wall(@game, 'TTopH')
    @wall7.setPosition(0, 26, 7.5)
    @wall8 = new Wall(@game, 'TCenterV')
    @wall8.setPosition(0, 19.5, 7.5)

    @wall9 = new Wall(@game, 'TTopV')
    @wall9.setPosition(-18.5, 16.5, 7.5)
    @wall10 = new Wall(@game, 'TCenterH')
    @wall10.setPosition(-13, 16.5, 7.5)

    @wall11 = new Wall(@game, 'TTopV')
    @wall11.setPosition(18, 16.5, 7.5)
    @wall12 = new Wall(@game, 'TCenterH')
    @wall12.setPosition(13, 16.5, 7.5)

    # Big Blocks
    @wall13 = new Wall(@game, 'Big')
    @wall13.setPosition(-35, 0, 7.5)
    @wall14 = new Wall(@game, 'Big')
    @wall14.setPosition(35, 0, 7.5)

    @wall15 = new Wall(@game, 'Center')
    @wall15.setPosition(0, 0, 7.5)

    # Below Center
    # Row 1
    @wall16 = new Wall(@game, 'TTopV')
    @wall16.setPosition(-18, -10, 7.5)
    @wall17 = new Wall(@game, 'TTopV')
    @wall17.setPosition(18, -10, 7.5)

    @wall18 = new Wall(@game, 'TTopH')
    @wall18.setPosition(0, -15, 7.5)
    @wall19 = new Wall(@game, 'TCenterV')
    @wall19.setPosition(0, -21, 7.5)

    # Row 2
    @wall20 = new Wall(@game, 'ThinWide')
    @wall20.setPosition(-14, -28, 7.5)

    @wall21 = new Wall(@game, 'ThinWide')
    @wall21.setPosition(14, -28, 7.5)

    @wall22 = new Wall(@game, 'ThinMid')
    @wall22.setPosition(-31, -25, 7.5)
    @wall22 = new Wall(@game, 'TCenterV')
    @wall22.setPosition(-27.25, -31.5, 7.5)

    @wall23 = new Wall(@game, 'ThinMid')
    @wall23.setPosition(31, -25, 7.5)
    @wall24 = new Wall(@game, 'TCenterV')
    @wall24.setPosition(27.25, -31.5, 7.5)

    @wall25 = new Wall(@game, 'TTopH')
    @wall25.setPosition(0, -37.5, 7.5)
    @wall26 = new Wall(@game, 'TCenterV')
    @wall26.setPosition(0, -30.5, 7.5)

    @wall27 = new Wall(@game, 'TCenterV')
    @wall27.setPosition(-18, -40.5, 7.5)
    @wall28 = new Wall(@game, 'TCenterV')
    @wall28.setPosition(18, -40.5, 7.5)
