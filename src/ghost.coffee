class @Ghost
  @MASS: 10
  @COLORS: [0xffb7e0, 'red', 0x00ffe4, 'orange']
  @POSITIONS: [
    new THREE.Vector3(0, 10, 7.5), new THREE.Vector3(40, 40, 7.5),
    new THREE.Vector3(-40, -40, 7.5), new THREE.Vector3(20, -30, 7.5)
  ]
  @RADIUS: 3
  @VELOCITY: 20

  constructor: (game, ghost_index) ->
    @game = game
    @geometry = new THREE.SphereGeometry(Ghost.RADIUS)
    @material = new THREE.MeshBasicMaterial({ color: Ghost.COLORS[ghost_index] })
    @object = new Physijs.SphereMesh(@geometry, @material, Ghost.MASS)

    position = Ghost.POSITIONS[ghost_index]
    @object.position.set(position.x, position.y, position.z)
    @object.name = 'Ghost'
    @game.addToScene(@object)
    @randomForce()

  xforce: (direction) ->
    @object.setLinearVelocity(new THREE.Vector3(Ghost.VELOCITY * direction, 0, 0))

  yforce: (direction) ->
    @object.setLinearVelocity(new THREE.Vector3(0, Ghost.VELOCITY * direction, 0))

  randomForce: =>
    direction = if Math.random() < 0.5 then 1 else -1
    if Math.random() < 0.5
      @xforce(direction)
    else
      @yforce(direction)
    setTimeout(@randomForce, 500)
