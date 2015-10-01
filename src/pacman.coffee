class @Pacman
  @MASS: 10
  @COLOR: 0xFFEE00
  @RADIUS: 3
  @VELOCITY: 10

  constructor: (game) ->
    @game = game
    @geometry = new THREE.SphereGeometry(Pacman.RADIUS)
    @material = new THREE.MeshBasicMaterial({ color: Pacman.COLOR })
    @object = new Physijs.SphereMesh(@geometry, @material, Pacman.MASS)
    @object.position.set(0, 0, 10)
    @game.addToScene(@object)
    @edge = new Edge(@object, @game)

  xforce: (direction) ->
    @object.setLinearVelocity(new THREE.Vector3(Pacman.VELOCITY * direction, 0, 0))

  yforce: (direction) ->
    @object.setLinearVelocity(new THREE.Vector3(0, Pacman.VELOCITY * direction, 0))
