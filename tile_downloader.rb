require './area_tile_calculation.rb'
require 'yaml'

thing = YAML.load_file('./portoalegre.yaml')
area_tile_calculation = AreaTileCalculation.new(thing)
tiles = []
(11..16).each do |zoom|
  tiles.push(area_tile_calculation.tiles_with(zoom))
end
puts tiles.inspect

#`wget -rnH --cut-dirs=3 http://tile.cloudmade.com/2edca5e855064440bdde47f98922620c/997/256/12/1464/2405.png`
