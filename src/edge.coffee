class @Edge
  constructor: (object, game) ->
    @edge = new THREE.EdgesHelper(object, 0)
    game.addToScene(@edge)
