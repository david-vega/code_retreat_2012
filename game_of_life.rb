require 'matrix'

class Game
  attr_accessor :grid, :grid_buffer

  def initialize
    @grid = Matrix.build(10) { if rand > 0.7 then 'alive' else 'dead' end } #if you want more cell alive just reduce the rand check
    @grid_buffer = @grid
  end
end