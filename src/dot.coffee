class @Dot
  @RADIUS: 1
  @COLOR: 'white'
  @MASS: 0

  constructor: (game) ->
    @game = game
    @geometry = new THREE.SphereGeometry(Dot.RADIUS)
    @material = new THREE.MeshBasicMaterial({ color: Dot.COLOR })
    @object = new Physijs.SphereMesh(@geometry, @material, Dot.MASS)
    @object._physijs.collision_flags = 4
    @object.addEventListener('collision', @collision)
    @game.addToScene(@object)

  setPosition: (x, y, z) ->
    @object.position.set(x, y, z)
    @object.__dirtyPosition = true

  collision: (other_object) =>
    if(other_object.name == 'Pacman')
      @game.removeFromScene(@object)
