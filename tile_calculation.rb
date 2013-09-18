include Math
class TileCalculation
  def initialize(attr)
    @lat_rad = (attr[:lat] * PI) / 180
    @lon_deg = attr[:long]
  end

  def xtile(zoom)
    n = 2**zoom
    xtile = ((@lon_deg + 180) / 360) * n
    return xtile.floor
  end

  def ytile(zoom)
    n = 2**zoom
    ytile = n*(1 - (log(tan(@lat_rad) + sec(@lat_rad)) / PI))/2
    return ytile.floor
  end

  private
  def sec(n)
    1 / cos(n)
  end
end
