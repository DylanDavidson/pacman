// Generated by CoffeeScript 1.10.0
(function() {
  this.Dots = (function() {
    function Dots(game) {
      this.game = game;
      this.addDots();
    }

    Dots.prototype.addDots = function() {
      var aa, ab, ac, dot, i, j, k, l, m, n, o, p, q, r, results, s, t, u, v, w, x, y, z;
      this.dots = [];
      for (i = j = -39; j <= 0; i = j += 5) {
        dot = new Dot(this.game);
        dot.setPosition(i, 41, 7.5);
      }
      for (i = k = 5; k <= 35; i = k += 5) {
        dot = new Dot(this.game);
        dot.setPosition(i, 41, 7.5);
      }
      for (i = l = 21; l <= 36; i = l += 5) {
        dot = new Dot(this.game);
        dot.setPosition(-39, i, 7.5);
      }
      for (i = m = 21; m <= 41; i = m += 5) {
        dot = new Dot(this.game);
        dot.setPosition(39, i, 7.5);
      }
      for (i = n = -34; n <= 34; i = n += 5) {
        dot = new Dot(this.game);
        dot.setPosition(i, 31, 7.5);
      }
      for (i = o = -39; o <= -19; i = o += 5) {
        dot = new Dot(this.game);
        dot.setPosition(i, 21, 7.5);
      }
      for (i = p = -14; p <= -4; i = p += 5) {
        dot = new Dot(this.game);
        dot.setPosition(i, 21, 7.5);
      }
      for (i = q = 4; q <= 14; i = q += 5) {
        dot = new Dot(this.game);
        dot.setPosition(i, 21, 7.5);
      }
      for (i = r = 19; r <= 39; i = r += 5) {
        dot = new Dot(this.game);
        dot.setPosition(i, 21, 7.5);
      }
      for (i = s = -39; s <= 17; i = s += 5) {
        dot = new Dot(this.game);
        dot.setPosition(-24, i, 7.5);
        dot = new Dot(this.game);
        dot.setPosition(24, i, 7.5);
      }
      for (i = t = -41; t <= -21; i = t += 5) {
        dot = new Dot(this.game);
        dot.setPosition(-39, i, 7.5);
        dot = new Dot(this.game);
        dot.setPosition(39, i, 7.5);
      }
      for (i = u = -20; u <= -5; i = u += 5) {
        dot = new Dot(this.game);
        dot.setPosition(i, -24, 7.5);
      }
      for (i = v = 5; v <= 20; i = v += 5) {
        dot = new Dot(this.game);
        dot.setPosition(i, -24, 7.5);
      }
      for (i = w = -20; w <= -5; i = w += 5) {
        dot = new Dot(this.game);
        dot.setPosition(i, -33, 7.5);
      }
      for (i = x = 5; x <= 20; i = x += 5) {
        dot = new Dot(this.game);
        dot.setPosition(i, -33, 7.5);
      }
      for (i = y = -34; y <= -29; i = y += 5) {
        dot = new Dot(this.game);
        dot.setPosition(i, -21, 7.5);
      }
      for (i = z = 29; z <= 34; i = z += 5) {
        dot = new Dot(this.game);
        dot.setPosition(i, -21, 7.5);
      }
      for (i = aa = -34; aa <= -29; i = aa += 5) {
        dot = new Dot(this.game);
        dot.setPosition(i, -41, 7.5);
      }
      for (i = ab = -15; ab <= 15; i = ab += 5) {
        dot = new Dot(this.game);
        dot.setPosition(i, -41, 7.5);
      }
      results = [];
      for (i = ac = 29; ac <= 34; i = ac += 5) {
        dot = new Dot(this.game);
        results.push(dot.setPosition(i, -41, 7.5));
      }
      return results;
    };

    return Dots;

  })();

}).call(this);
