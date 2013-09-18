class AreaTileCalculation
  def initialize(corners)
    @tile_calculation1 = TileCalculation.new(corners["top-left"])
    @tile_calculation2 = TileCalculation.new(corners["bottom-right"])
  end

  def tiles_with(zoom)
    x_sequence(zoom).product y_sequence(zoom)
  end

  def x_sequence(zoom)
    sequence(@tile_calculation1.xtile(zoom), @tile_calculation2.xtile(zoom))
  end

  def y_sequence(zoom)
    sequence(@tile_calculation1.ytile(zoom), @tile_calculation2.ytile(zoom))
  end

  def sequence(a, b)
    if(a > b)
      return (b..a).to_a
    end
    (a..b).to_a
  end
end
