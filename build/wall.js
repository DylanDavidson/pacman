// Generated by CoffeeScript 1.10.0
(function() {
  this.Wall = (function() {
    Wall.MASS = 0;

    Wall.COLOR = 0x2121DE;

    Wall.TYPE_MAP = {
      'Side': new THREE.Vector3(5, 100, 10),
      'Edge': new THREE.Vector3(75, 5, 10)
    };

    function Wall(game, type) {
      this.game = game;
      this.size = Wall.TYPE_MAP[type];
      this.geometry = new THREE.BoxGeometry(this.size.x, this.size.y, this.size.z);
      this.material = new THREE.MeshBasicMaterial({
        color: Wall.COLOR
      });
      this.object = new Physijs.BoxMesh(this.geometry, this.material, Wall.MASS);
      this.edge = new Edge(this.object, this.game);
      this.game.addToScene(this.object);
    }

    Wall.prototype.setPosition = function(x, y, z) {
      this.object.position.set(x, y, z);
      return this.object.__dirtyPosition = true;
    };

    return Wall;

  })();

}).call(this);
