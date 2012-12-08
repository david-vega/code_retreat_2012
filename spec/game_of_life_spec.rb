require_relative '../game_of_life'

describe 'game of life' do
  context 'A cell must' do
    cell = Cell.new
    context 'when it is alive' do
      it 'should die when has less than 2 neighbors' do
        neighbors = cell.check_neighbors
        cell.alive?(neighbors).should be_false
      end

      it 'should die when it has more than 3 neighbors' do
        cell.alive?.should be_false
      end

      it 'should live when has less or equal than three neighbors and must have two or more neighbors' do
        cell.alive?.should be_false
      end
    end

    #context 'when it is dead' do
    #  it 'should come back to life when it has exactly 3 alive neighbors' do
    #    cell.alive?.should be_true
    #  end
    #end
  end
end

