class @Wall
  @MASS: 0
  @COLOR: 0x2121DE
  @TYPE_MAP: {
    'Side': new THREE.Vector3(5, 100, 10),
    'Edge': new THREE.Vector3(85, 5, 10),
    'FatMid': new THREE.Vector3(10, 5, 10),
    'FatWide': new THREE.Vector3(12, 5, 10),
    'ThinMid': new THREE.Vector3(10, 2.5, 10),
    'ThinWide': new THREE.Vector3(12, 2.5, 10),
    'TTopH': new THREE.Vector3(20, 2.5, 10),
    'TTopV': new THREE.Vector3(2.5, 20, 10),
    'TCenterV': new THREE.Vector3(2.5, 10, 10),
    'TCenterH': new THREE.Vector3(10, 2.5, 10),
    'Big': new THREE.Vector3(17, 35, 10),
    'Center': new THREE.Vector3(20, 15, 10),
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
