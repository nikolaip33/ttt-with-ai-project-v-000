class Board

  attr_accessor :cells

  def initialize
    @cells = Array.new(9, " ")
  end

  def display
    puts " #{self.cells[0]} | #{self.cells[1]} | #{self.cells[2]} "
    puts "-----------"
    puts " #{self.cells[3]} | #{self.cells[4]} | #{self.cells[5]} "
    puts "-----------"
    puts " #{self.cells[6]} | #{self.cells[7]} | #{self.cells[8]} "
  end

  def position(input)
    self.cells[input.to_i-1]
  end

  def turn_count
    9 - self.cells.count(" ")
  end

  def update(input, player)
    self.cells[input.to_i-1] = player.token
  end

  def full?
    self.cells.count("X") + self.cells.count("O") == 9
  end

  def taken?(input)
    position(input) != " "
  end

  def is_taken?(index)
    self.cells[index] == "X" || self.cells[index] == "O" 
  end

  def valid_move?(input)
    !taken?(input) && (input.to_i-1).between?(0,8)
  end

  def reset!
    self.cells = Array.new(9, " ")
  end

  def the_hotness
    "This program is the hotness"
  end

end #class Board
