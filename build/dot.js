// Generated by CoffeeScript 1.10.0
(function() {
  var bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

  this.Dot = (function() {
    Dot.RADIUS = 1;

    Dot.COLOR = 'white';

    Dot.MASS = 0;

    function Dot(game) {
      this.collision = bind(this.collision, this);
      this.game = game;
      this.geometry = new THREE.SphereGeometry(Dot.RADIUS);
      this.material = new THREE.MeshBasicMaterial({
        color: Dot.COLOR
      });
      this.object = new Physijs.SphereMesh(this.geometry, this.material, Dot.MASS);
      this.object._physijs.collision_flags = 4;
      this.object.addEventListener('collision', this.collision);
      this.game.addToScene(this.object);
    }

    Dot.prototype.setPosition = function(x, y, z) {
      this.object.position.set(x, y, z);
      return this.object.__dirtyPosition = true;
    };

    Dot.prototype.collision = function(other_object) {
      if (other_object.name === 'Pacman') {
        return this.game.removeFromScene(this.object);
      }
    };

    return Dot;

  })();

}).call(this);
