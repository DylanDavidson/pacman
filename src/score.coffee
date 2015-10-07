class @Score
  constructor: (game) ->
    @game = game
    @material = new THREE.MeshBasicMaterial({ color: 'white' })
    @setScore(0)

  setScore: (score) ->
    if @object != null && @object != undefined
      @game.removeFromScene(@object)

    @geometry = new THREE.TextGeometry(score, { size: 10, height: 10 })
    @object = new THREE.Mesh(@geometry, @material)
    @object.position.set(-12, -5, 10)

    @game.addToScene(@object)
