require_relative '../game_of_life'

describe 'Game of Life' do
  before do
    @game = Game.new
    @game.grid.should be_a Matrix
    @game.grid.row_size.should == 10
    @game.grid.column_size.should == 10
    @game.grid_buffer.should be_a Matrix
    @game.grid_buffer.row_size.should == 10
    @game.grid_buffer.column_size.should == 10
  end

  context "cell is alive" do

  end

  context "cell is dead" do
    it 'should have exactly 3 alive neighbors' do
      puts @game.grid
      @game.grid[2,2] = 'dead'
      #@game.grid[2,3] = 'dead'
      #@game.grid[2,1] = 'dead'
      #@game.grid[1,2] = 'dead'
      #@game.grid[3,2] = 'dead'
      #@game.grid[1,1] = 'dead'
      #@game.grid[1,3] = 'alive'
      #@game.grid[3,3] = 'alive'
      #@game.grid[3,1] = 'alive'
      #puts @game.grid



    end
  end
end