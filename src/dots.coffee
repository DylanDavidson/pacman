class @Dots
  constructor: (game) ->
    @game = game
    @addDots()
    @total = @dots.length

  addDots: ->
    @dots = []
    # Row 1
    for i in [-39..0] by 5
      dot = new Dot(@game, @)
      dot.setPosition(i, 41, 7.5)
      @dots.push(dot)
    for i in [5..35] by 5
      dot = new Dot(@game, @)
      dot.setPosition(i, 41, 7.5)
      @dots.push(dot)
    # Top Edge Column
    for i in [21..36] by 5
      dot = new Dot(@game, @)
      dot.setPosition(-39, i, 7.5)
      @dots.push(dot)
    for i in [21..41] by 5
      dot = new Dot(@game, @)
      dot.setPosition(39, i, 7.5)
      @dots.push(dot)
    # Row 2
    for i in [-34..34] by 5
      dot = new Dot(@game, @)
      dot.setPosition(i, 31, 7.5)
      @dots.push(dot)
    # Row 3
    for i in [-39..-24] by 5
      dot = new Dot(@game, @)
      dot.setPosition(i, 21, 7.5)
      @dots.push(dot)
    for i in [-14..-4] by 5
      dot = new Dot(@game, @)
      dot.setPosition(i, 21, 7.5)
      @dots.push(dot)
    for i in [4..14] by 5
      dot = new Dot(@game, @)
      dot.setPosition(i, 21, 7.5)
      @dots.push(dot)
    for i in [19..39] by 5
      dot = new Dot(@game, @)
      dot.setPosition(i, 21, 7.5)
      @dots.push(dot)
    # Middle Columns
    for i in [-39..17] by 5
      dot = new Dot(@game, @)
      dot.setPosition(-24, i, 7.5)
      @dots.push(dot)
      dot = new Dot(@game, @)
      dot.setPosition(24, i, 7.5)
      @dots.push(dot)
    # Bottom Edge Columns
    for i in [-41..-21] by 5
      dot = new Dot(@game, @)
      dot.setPosition(-39, i, 7.5)
      @dots.push(dot)
      dot = new Dot(@game, @)
      dot.setPosition(39, i, 7.5)
      @dots.push(dot)
    # Row 4
    for i in [-20..-5] by 5
      dot = new Dot(@game, @)
      dot.setPosition(i, -24, 7.5)
      @dots.push(dot)
    for i in [5..20] by 5
      dot = new Dot(@game, @)
      dot.setPosition(i, -24, 7.5)
      @dots.push(dot)
    # Row 5
    for i in [-20..-5] by 5
      dot = new Dot(@game, @)
      dot.setPosition(i, -33, 7.5)
      @dots.push(dot)
    for i in [5..20] by 5
      dot = new Dot(@game, @)
      dot.setPosition(i, -33, 7.5)
      @dots.push(dot)
    for i in [-34..-29] by 5
      dot = new Dot(@game, @)
      dot.setPosition(i, -21, 7.5)
      @dots.push(dot)
    for i in [29..34] by 5
      dot = new Dot(@game, @)
      dot.setPosition(i, -21, 7.5)
      @dots.push(dot)
    # Bottom Row
    for i in [-34..-29] by 5
      dot = new Dot(@game, @)
      dot.setPosition(i, -41, 7.5)
      @dots.push(dot)
    for i in [-15..15] by 5
      dot = new Dot(@game, @)
      dot.setPosition(i, -41, 7.5)
      @dots.push(dot)
    for i in [29..34] by 5
      dot = new Dot(@game, @)
      dot.setPosition(i, -41, 7.5)
      @dots.push(dot)
