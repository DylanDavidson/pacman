class @Pacman
  @MASS: 10
  @COLOR: 0xFFEE00
  @RADIUS: 3
  @VELOCITY: 20

  constructor: (game) ->
    @game = game
    @geometry = new THREE.SphereGeometry(Pacman.RADIUS)
    @material = new THREE.MeshBasicMaterial({ color: Pacman.COLOR })
    @object = new Physijs.SphereMesh(@geometry, @material, Pacman.MASS)
    @object.position.set(0, -10, 7.5)
    @object.name = 'Pacman'
    @game.addToScene(@object)
    @edge = new Edge(@object, @game)
    @object.addEventListener('collision', @collision)

  xforce: (direction) ->
    @object.setLinearVelocity(new THREE.Vector3(Pacman.VELOCITY * direction, 0, 0))

  yforce: (direction) ->
    @object.setLinearVelocity(new THREE.Vector3(0, Pacman.VELOCITY * direction, 0))

  getPosition: ->
    @object.position

  getDirection: ->
    velocity = @object._physijs.linearVelocity
    x = Math.abs(velocity.x)
    y = Math.abs(velocity.y)
    if x > y
      new THREE.Vector3(Math.sign(velocity.x), 0, 0)
    else
      new THREE.Vector3(Math.sign(velocity.y), 0, 0)

  collision: (other) =>
    if other.name == 'Ghost'
      @game.removeFromScene(@object)
      document.getElementById('over').innerHTML = 'GAME OVER'
      document.getElementById('over').style.display = 'block'
