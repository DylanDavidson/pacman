class @Dot
  @RADIUS: 1
  @COLOR: 'white'
  @MASS: 0
  @SOUND: new Audio('../sounds/chomp.wav')

  constructor: (game, dots) ->
    @game = game
    @dots = dots
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
      @dots.dots.splice(@dots.dots.indexOf(@), 1)
      Dot.SOUND.play()
    if @dots.dots.length <= 0
      document.getElementById('over').innerHTML = 'YOU WIN'
      document.getElementById('over').style.display = 'block'
