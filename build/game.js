// Generated by CoffeeScript 1.10.0
(function() {
  var bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

  this.game = null;

  this.timeout = function(delay, callback) {
    return setTimeout(callback, delay);
  };

  this.radian = function(degree) {
    return (Math.PI / 180) * degree;
  };

  this.onload = function() {
    this.game = new Game();
    window.onkeydown = this.game.keyListener;
    return this.render();
  };

  this.render = function() {
    this.game.render();
    return requestAnimationFrame(window.render);
  };

  this.Game = (function() {
    function Game() {
      this.keyListener = bind(this.keyListener, this);
      this.base = new Base();
      this.board = new Board(this);
      this.pacman = new Pacman(this);
      this.dots = new Dots(this);
      this.pinky = new Ghost(this, 0);
      this.blinky = new Ghost(this, 1);
      this.inky = new Ghost(this, 2);
      this.clyde = new Ghost(this, 3);
    }

    Game.prototype.render = function() {
      this.updateCamera();
      return this.base.render();
    };

    Game.prototype.updateCamera = function() {
      return this.base.updateCamera(this.pacman);
    };

    Game.prototype.addToScene = function(object) {
      return this.base.addToScene(object);
    };

    Game.prototype.removeFromScene = function(object) {
      return this.base.removeFromScene(object);
    };

    Game.prototype.keyListener = function(e) {
      var key;
      key = e.keyCode ? e.keyCode : e.which;
      if (key === 37) {
        return this.pacman.xforce(-1);
      } else if (key === 38) {
        return this.pacman.yforce(1);
      } else if (key === 39) {
        return this.pacman.xforce(1);
      } else if (key === 40) {
        return this.pacman.yforce(-1);
      }
    };

    return Game;

  })();

}).call(this);
