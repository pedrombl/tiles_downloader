require './tile_calculation.rb'

describe TileCalculation do
  it "calculates x to be 366 when zoom is 10 and long is -51.268056" do
    tile_calculation = TileCalculation.new({zoom:10, long:-51.268056, lat:0})
    tile_calculation.xtile.should be(366)
  end

  it "calculates x to be 366 when zoom is 10 and long is -51.027856" do
    tile_calculation = TileCalculation.new({zoom:10, long:-51.027856, lat:0})
    tile_calculation.xtile.should be(366)
  end

  it "calculates y to be 601 when zoom is 10 and lat is -29.955771" do
    tile_calculation = TileCalculation.new({zoom:10, lat:-29.955771})
    tile_calculation.ytile.should be(601)
  end
  
  it "calculates y to be 602 when zoom is 10 and lat is -30.145293" do
    tile_calculation = TileCalculation.new({zoom:10, lat:-30.145293})
    tile_calculation.ytile.should be(602)
  end
end
