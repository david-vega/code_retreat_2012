require 'matrix'

def universe
  [[0,0,1,0,0],
   [0,1,0,1,0],
   [0,0,0,1,0],
   [1,1,1,1,1],
   [0,0,0,1,0],
   [0,0,1,1,0]]
end

def executor grid

end

def num_neighbors pos_x,pos_y,grid
  start_x = (pox_x - 1) < 0 ? 0 : pos_x - 1
  start_y = (pox_y - 1) < 0 ? 0 : pos_y - 1
  end_x = (pox_x + 1) > grid.size ? grid.size : pos_x + 1
  end_y = (pox_y + 1) > grid.size ? grid.size : pos_y + 1
  grid[start_x..end_x].each
end