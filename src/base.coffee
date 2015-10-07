# Dylan Davidson
# PacMan - CAP 4270
#

## Colors
BLACK = 0
WHITE = 0xFFFFFF
GRAY = 0x666666
OPAQUE_ALPHA = 1.0
LIGHT_COLOR = WHITE

## Dimensions
WIDTH = window.innerWidth
HEIGHT = window.innerHeight
FOV = 45
ASPECT_RATIO = WIDTH / HEIGHT
NEAR_FRUSTRUM = 0.1
FAR_FRUSTRUM = 1000

# 3D Graphics
ENABLE_SHADOW_MAPS = true

# Physics
GRAVITY = new THREE.Vector3(0, 0, -10)

# Positions
CAMERA_POSITON = new THREE.Vector3(0, 0, 130)

class @Base
  constructor: ->
    @scene = new Physijs.Scene()
    @renderer = new THREE.WebGLRenderer()
    @follow_camera = new THREE.PerspectiveCamera(FOV, ASPECT_RATIO, NEAR_FRUSTRUM, FAR_FRUSTRUM)
    @camera = new THREE.PerspectiveCamera(FOV, ASPECT_RATIO, NEAR_FRUSTRUM, FAR_FRUSTRUM)
    @spotlight = new THREE.SpotLight(LIGHT_COLOR)

    @spotlight = new THREE.SpotLight(LIGHT_COLOR)

    @scene.setGravity(GRAVITY)

    @height = window.innerHeight
    @width = window.innerWidth
    @renderer.autoClear = false

    @setupRenderer()
    @setupCamera()
    @setupSpotlight()

  # Called every frame, updates the scene and simulates the physics
  render: ->
    @scene.simulate()
    @renderer.clear()
    @renderer.setViewport(0, 0, @width, @height)
    @renderer.render(@scene, @follow_camera)
    @renderer.clearDepth()
    @renderer.setViewport(0, @height - 310, 300, 300)
    @renderer.render(@scene, @camera)

  # Adds given object to scene
  addToScene: (object) ->
    @scene.add(object)

  removeFromScene: (object) ->
    @scene.remove(object)

  setCameraPosition: (x, y, z) ->
    @camera.position.set(x, y, z)

  setupRenderer: ->
    @renderer.setClearColor(BLACK, OPAQUE_ALPHA)
    @renderer.setSize(WIDTH, HEIGHT)
    @renderer.shadowMapEnabled = ENABLE_SHADOW_MAPS
    document.body.appendChild(@renderer.domElement)

  setupCamera: ->
    @setCameraPosition(CAMERA_POSITON.x, CAMERA_POSITON.y, CAMERA_POSITON.z)
    @camera.up = new THREE.Vector3(0, 1, 0)
    @camera.lookAt(@scene.position)
    @follow_camera.position.set(0, 0, 0)
    @follow_camera.up = new THREE.Vector3(0, 0, 1)
    @addToScene(@follow_camera)
    @addToScene(@camera)

  setupSpotlight: ->
    @scene.add(new THREE.AmbientLight(GRAY))

    @spotlight.position.set(-20, -50, 20)
    @spotlight.lookAt(@scene.position)
    @spotlight.shadowCameraNear = 20
    @spotlight.shadowCameraFar = 300
    @spotlight.shadowDarkness = 0.5
    @spotlight.castShadow = true
    @addToScene(@spotlight)

  updateCamera: (player) ->
    position = player.getPosition()
    @follow_camera.lookAt(position)
    camera_position = new THREE.Vector3(0, 5, 20)
    @follow_camera.position.set(
      position.x + camera_position.x, position.y - camera_position.y, position.z + camera_position.z
    )
