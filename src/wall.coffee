class @Wall
  @MASS: 0
  @COLOR: 0x2121DE
  @TYPE_MAP: {
    'Side': new THREE.Vector3(5, 100, 10),
    'Edge': new THREE.Vector3(75, 5, 10),
  }

  constructor: (game, type) ->
    @game = game
    @size = Wall.TYPE_MAP[type]
    @geometry = new THREE.BoxGeometry(@size.x, @size.y, @size.z)
    @material = new THREE.MeshBasicMaterial({ color: Wall.COLOR })
    @object = new Physijs.BoxMesh(@geometry, @material, Wall.MASS)
    @edge = new Edge(@object, @game)
    @game.addToScene(@object)

  setPosition: (x, y, z) ->
    @object.position.set(x, y, z)
    @object.__dirtyPosition = true
