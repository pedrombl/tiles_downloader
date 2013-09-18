require "./area_tile_calculation.rb"
describe AreaTileCalculation do
  it "should return 16 tile elements with zoom 12" do
    corners = {
      "top-left" => {
        lat: -29.955771,
        long: -51.268056
      },
      "bottom-right" => {
        lat: -30.145293,
        long: -51.027856      
      }
    }

    area_tile_calculation = AreaTileCalculation.new(corners);
    tiles = area_tile_calculation.tiles_with(12);
    tiles.size.should be(16);
    tiles.should include([1464, 2405])
    tiles.should include([1466, 2407])
    tiles.should include([1467, 2408])
  end
end
