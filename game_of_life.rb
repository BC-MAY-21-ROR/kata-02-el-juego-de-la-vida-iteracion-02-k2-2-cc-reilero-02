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

# Class for play

class AliveCell
  def initialize(number_alive_cells)
    @number_alive_cells = number_alive_cells
  end
  def alive_cells
    puts " #{@number_alive_cells}  celulas vivas"
  end  
end
print 'Ingresa el número de celulas vivas: '
number_alive_cells_input = gets.chomp
total_cells_alive = AliveCell.new(number_alive_cells_input)
total_cells_alive.alive_cells

class RandomAliveCell
  def initialize(number_rand)
    @number_rand = number_rand
  end
#   def random
#     row = rand(0..)
#     column =rand(0..)
#     array = push[[1 ,2] ,  [2 ,5], [4 ,y], [x ,y], [x ,y] ]
#   end
end