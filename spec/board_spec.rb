require_relative '../lib/board'

describe Board do
    let(:gameview) {Board.new}
    describe "#display_board" do
        it "return check index & number display board" do
            board = gameview.board
            expect(board[0]).to eql(1)
            expect(board[10]).to eql(nil)
        end  
    end
    describe "#update_board" do
        it 'return update value after every move' do
            gameview.update_board(2, 'x')
            expect(gameview.board[1]).to eql('x')
        end
    end
    describe "#winner?" do
        it 'return true if either players matches the winner instruction' do
            gameview.update_board(3, 'o')
            gameview.update_board(6, 'o')
            gameview.update_board(9, 'o')
            expect(gameview.winner?).to eql(true)
        end
    end
    describe "#draw?" do
        it 'return true if the board is not complete' do
            gameview.update_board(3, 'x')
            expect(gameview.draw?).to eql(false)
        end
        it 'return true if the board is complete' do
            gameview.update_board(1, 'x')
            gameview.update_board(2, 'o')
            gameview.update_board(3, 'x')
            gameview.update_board(4, 'o')
            gameview.update_board(5, 'x')
            gameview.update_board(6, 'o')
            gameview.update_board(7, 'x')
            gameview.update_board(8, '0')
            gameview.update_board(9, 'x')
            expect(gameview.draw?).to eql(true)
        end
        it 'return false when game is a draw and no winner' do
            gameview.update_board(1, 'x')
            gameview.update_board(2, 'x')
            gameview.update_board(3, '0')
            gameview.update_board(4, '0')
            gameview.update_board(5, '0')
            gameview.update_board(6, 'x')
            gameview.update_board(7, 'x')
            gameview.update_board(8, 'x')
            gameview.update_board(9, '0')
        end
    end
end