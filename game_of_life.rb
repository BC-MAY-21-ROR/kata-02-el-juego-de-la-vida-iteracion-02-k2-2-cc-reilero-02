# frozen_string_literal: true

# class create Board with n rows and n columns
class Board
  def initialize(row, column)
    @board = []
    row.times do
      @board.push(Array.new(column, '.'))
    end
  end

  def show_board
    @board.each do |row|
      puts row.join(' ')
    end
  end
end
board_instance = Board.new(5, 5)
board_instance.show_board
