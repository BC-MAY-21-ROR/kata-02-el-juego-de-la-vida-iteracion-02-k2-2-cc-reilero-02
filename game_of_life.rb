# frozen_string_literal: true

# class create Board with n rows and n columns
class Board
  def initialize(row, column)
    @board = []
    row.times do
      @board.push(Array.new(column, RandomAliveCell.new()))
    end
  end

  def show_board
    @board.each do |row|
      puts row.join(' ')
    end
  end
end

# class AliveCell puts the cells into the board
class AliveCell
  def initialize(number_alive_cells)
    @number_alive_cells = number_alive_cells
  end

  def alive_cells
    puts " #{@number_alive_cells}  celulas vivas"
  end
end

# class RandomAliveCell defines which index in the array will have an alive cell.
# class RandomAliveCell
#   def initialize(number_rand)
#     @number_rand = number_rand
#   end
  
#   # def random 
#   #   number_alive_cells_input.times do
#   #   random_row=rand(number_of_rows)
#   #   random_column=rand(number_of_columns)
#   #   put_alive_cell(random_row, random_column)
#   #   end
#   # end
# end

print 'Ingresa el número de filas del tablero: '
number_of_rows = gets.chomp.to_i
print 'Ingresa el número de columnas del tablero: '
number_of_columns = gets.chomp.to_i

print 'Ingresa el número de celulas vivas: '
number_alive_cells_input = gets.chomp.to_i
total_cells_alive = AliveCell.new(number_alive_cells_input)

board_instance = Board.new(number_of_rows, number_of_columns)
board_instance.show_board
total_cells_alive.alive_cells

