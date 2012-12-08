require "matrix"

class Cell
  attr_accessor :status

  def initialize
    if rand > 0.7
      @status = 'alive'
    else
      @status = 'dead'
    end
  end
end

class Universe
  attr_accessor :grid

  def initialize
    @grid = Matrix.build(10) { cell = Cell.new }
  end

  def executor pos_x, pos_y
    pos_x_path = pos_x-1
    pos_x_path = pos_x-1

  end
end