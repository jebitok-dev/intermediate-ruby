require_relative '../lib/validation'
require_relative '../lib/board'

describe Validate do
  let(:validation) { Validate.new }
  let(:gameview) { Board.new }
  describe '#valid_move' do
    it 'return true if the move is within valid value' do
      expect(validation.valid_move('5')).to eql(true)
    end
    it 'return false if move is not within the valid moves' do
      expect(validation.valid_move(13)).to eql(false)
    end
    it 'return false if value selected is not an interger' do
      expect(validation.valid_move('x')).to eql(false)
    end
    it 'return false if the move has been selected' do
      validation.update_selected_move('5')
      expect(validation.valid_move('5')).to eql(false)
    end
  end
end
