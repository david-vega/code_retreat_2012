require_relative '../game_of_life'

describe 'GameOfLife' do
  before do
    @game = Universe.new
    @game.grid.column_size.should == 10
    @game.grid.row_size.should == 10
  end
  context 'When cell is alive' do
    it 'should die when has less than 2 neighbors' do
      @game.grid[1,1].status = 'alive'
      @game.grid[0,0].status = 'dead'
      @game.grid[0,1].status = 'dead'
      @game.grid[0,2].status = 'dead'
      @game.grid[1,0].status = 'dead'
      @game.grid[1,2].status = 'dead'
      @game.grid[2,0].status = 'dead'
      @game.grid[2,1].status = 'dead'
      @game.grid[2,2].status = 'dead'

      @game.grid[1,1].executor.should be 'dead'
    end

    it 'should die and kill all neighbors when remains alive more than 3 turns' do
      pending
    end

  end

  context 'When cell is dead' do
    pending
  end

end